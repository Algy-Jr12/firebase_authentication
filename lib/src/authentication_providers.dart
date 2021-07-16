import 'package:firebase_authentication/src/services/auth_service.dart';
import 'package:firebase_authentication/src/state/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationServiceProvider = Provider<AuthService>((_) => AuthService());

final authenticationStateProvider = StateNotifierProvider<AuthService, AuthState>((ref) {
  return ref.watch(authenticationServiceProvider);
});

final authenticationChangesProvider = StreamProvider<User?>((ref) {
  return ref.watch(authenticationServiceProvider).authStateChanges();
});