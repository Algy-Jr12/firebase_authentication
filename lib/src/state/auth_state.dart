import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initializing() = _AuthStateInitializing;
  const factory AuthState.authenticated(String uid) = _AuthStateReady;
  const factory AuthState.error(String errorCode, String errorMessage) = _AuthStateError;
}