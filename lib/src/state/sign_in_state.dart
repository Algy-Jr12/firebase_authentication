import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sign_in_state.freezed.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.notValid() = _SignInStateNotValid;
  const factory SignInState.canSubmit() = _SignInStateCanSubmit;
  const factory SignInState.loading() = _SignInStateLoading;
  const factory SignInState.success() = _SignInStateSuccess;
  const factory SignInState.error(String errorText) = _SignInStateError; 
}