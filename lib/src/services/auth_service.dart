import 'dart:convert';
import 'dart:math';

import 'package:firebase_authentication/src/state/auth_state.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService extends StateNotifier<AuthState> {
  AuthService() : super(AuthState.initializing()) {
    _firebaseAuth = FirebaseAuth.instance;
  }

  late FirebaseAuth _firebaseAuth;

  // AUTHENTICATION API
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    await _safeFirebaseAuth(() => _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password));
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _safeFirebaseAuth(() => _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password));
  }

  Future<void> sendEmailVerification() async {
    final user = _firebaseAuth.currentUser;

    if (user == null) {
      state = AuthState.error('cant-verify-user',
          'User needs to be authenticated before you can send them a verification email');
      return;
    }

    if (user.emailVerified) {
      state = AuthState.error(
          'email-already-verified', 'The user\'s email is already verified');
      return;
    }

    await user.sendEmailVerification();
  }

  Future<void> signInAnonymously() async {
    await _firebaseAuth.signInAnonymously();
  }

  Future<void> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = _generateNonce();
    final nonce = _sha256ofString(rawNonce);

    // Request credentials for the currently signed in Apple account
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      // Create an OAuthCredential from the credential returned by Apple.
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      // Sign in the user with firebase
      await _firebaseAuth.signInWithCredential(oauthCredential);
    } on SignInWithAppleAuthorizationException catch (e) {
      state = AuthState.error("${e.code.index}",
          "SignInWithAppleAuthorizationException - ${e.message}");
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(
          e.code, e.message ?? "Unknown FirebaseAuthException thrown");
    }
  }

  Future<void> signOut() async => await _firebaseAuth.signOut();

  // USER MANAGEMENT
  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> deleteUser() async {
    try {
      await _firebaseAuth.currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(
          e.code, e.message ?? "Unknown FirebaseAuthException thrown");
    }
  }

  // HELPER METHODS
  Future<void> _safeFirebaseAuth(Function() function) async {
    try {
      await function();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(
        e.code,
        e.message ?? "Unknown FirebaseAuthException thrown",
      );
    } catch (e) {
      state = AuthState.error(
        'unknown-exceptions',
        'An unknown, non FirebaseAuth related exception occurred',
      );
    }
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String _generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
