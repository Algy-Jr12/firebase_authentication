import 'dart:convert';
import 'dart:math';

import 'package:firebase_authentication/src/state/auth_state.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

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

  // Receive user email, url and others properties then send an email to user email with an authentication link
  Future<void> signInWithEmailLinkAuth({
    required String emailAuth,
    required String url,
    bool? handleCodeInApp,
    String? iOSBundleId,
    String? androidPackageName,
    bool? androidInstallApp,
    String? androidMinimunVersion,
    String? dynamicLinkDomain,
  }) async {
    final acs = ActionCodeSettings(
      url: url,
      handleCodeInApp: handleCodeInApp,
      iOSBundleId: iOSBundleId,
      androidPackageName: androidPackageName,
      androidInstallApp: androidInstallApp,
      androidMinimumVersion: androidMinimunVersion,
      dynamicLinkDomain: dynamicLinkDomain,
    );

    await _safeFirebaseAuth(() => _firebaseAuth.sendSignInLinkToEmail(
          email: emailAuth,
          actionCodeSettings: acs,
        ));

    initDynamicLinks(emailAuth);
  }

  // configuration of listeners for link callbacks when app is active or in background calling onLink
  // when is received a email link after user click the link sent to their email
  // and check if the income link is Sign in with email link
  void initDynamicLinks(String emailAuth) async {
    FirebaseDynamicLinks.instance.onLink(
      onSuccess: (PendingDynamicLinkData? dynamicLink) async {
        if (dynamicLink == null) return;
        final Uri emailLink = dynamicLink.link;

        verifyEmailLink(emailAuth, emailLink);
      },
      onError: (OnLinkErrorException e) async => print(e.message),
    );

    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? emailLink = data?.link;

    if (emailLink != null) verifyEmailLink(emailAuth, emailLink);
  }

  // Verify email link and sign in
  void verifyEmailLink(String emailAuth, Uri emailLink) {
    if (_firebaseAuth.isSignInWithEmailLink(emailLink.toString())) {
      _safeFirebaseAuth(
        () => _firebaseAuth
            .signInWithEmailLink(
              email: emailAuth,
              emailLink: emailLink.toString(),
            )
            .then((value) => print(value.user)),
      );
    }
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
