// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInStateNotValid notValid() {
    return const _SignInStateNotValid();
  }

  _SignInStateCanSubmit canSubmit() {
    return const _SignInStateCanSubmit();
  }

  _SignInStateLoading loading() {
    return const _SignInStateLoading();
  }

  _SignInStateSuccess success() {
    return const _SignInStateSuccess();
  }

  _SignInStateError error(String errorText) {
    return _SignInStateError(
      errorText,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notValid,
    required TResult Function() canSubmit,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorText) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notValid,
    TResult Function()? canSubmit,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStateNotValid value) notValid,
    required TResult Function(_SignInStateCanSubmit value) canSubmit,
    required TResult Function(_SignInStateLoading value) loading,
    required TResult Function(_SignInStateSuccess value) success,
    required TResult Function(_SignInStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStateNotValid value)? notValid,
    TResult Function(_SignInStateCanSubmit value)? canSubmit,
    TResult Function(_SignInStateLoading value)? loading,
    TResult Function(_SignInStateSuccess value)? success,
    TResult Function(_SignInStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class _$SignInStateNotValidCopyWith<$Res> {
  factory _$SignInStateNotValidCopyWith(_SignInStateNotValid value,
          $Res Function(_SignInStateNotValid) then) =
      __$SignInStateNotValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInStateNotValidCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateNotValidCopyWith<$Res> {
  __$SignInStateNotValidCopyWithImpl(
      _SignInStateNotValid _value, $Res Function(_SignInStateNotValid) _then)
      : super(_value, (v) => _then(v as _SignInStateNotValid));

  @override
  _SignInStateNotValid get _value => super._value as _SignInStateNotValid;
}

/// @nodoc

class _$_SignInStateNotValid
    with DiagnosticableTreeMixin
    implements _SignInStateNotValid {
  const _$_SignInStateNotValid();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.notValid()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInState.notValid'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInStateNotValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notValid,
    required TResult Function() canSubmit,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorText) error,
  }) {
    return notValid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notValid,
    TResult Function()? canSubmit,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) {
    if (notValid != null) {
      return notValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStateNotValid value) notValid,
    required TResult Function(_SignInStateCanSubmit value) canSubmit,
    required TResult Function(_SignInStateLoading value) loading,
    required TResult Function(_SignInStateSuccess value) success,
    required TResult Function(_SignInStateError value) error,
  }) {
    return notValid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStateNotValid value)? notValid,
    TResult Function(_SignInStateCanSubmit value)? canSubmit,
    TResult Function(_SignInStateLoading value)? loading,
    TResult Function(_SignInStateSuccess value)? success,
    TResult Function(_SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (notValid != null) {
      return notValid(this);
    }
    return orElse();
  }
}

abstract class _SignInStateNotValid implements SignInState {
  const factory _SignInStateNotValid() = _$_SignInStateNotValid;
}

/// @nodoc
abstract class _$SignInStateCanSubmitCopyWith<$Res> {
  factory _$SignInStateCanSubmitCopyWith(_SignInStateCanSubmit value,
          $Res Function(_SignInStateCanSubmit) then) =
      __$SignInStateCanSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInStateCanSubmitCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCanSubmitCopyWith<$Res> {
  __$SignInStateCanSubmitCopyWithImpl(
      _SignInStateCanSubmit _value, $Res Function(_SignInStateCanSubmit) _then)
      : super(_value, (v) => _then(v as _SignInStateCanSubmit));

  @override
  _SignInStateCanSubmit get _value => super._value as _SignInStateCanSubmit;
}

/// @nodoc

class _$_SignInStateCanSubmit
    with DiagnosticableTreeMixin
    implements _SignInStateCanSubmit {
  const _$_SignInStateCanSubmit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.canSubmit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInState.canSubmit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInStateCanSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notValid,
    required TResult Function() canSubmit,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorText) error,
  }) {
    return canSubmit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notValid,
    TResult Function()? canSubmit,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) {
    if (canSubmit != null) {
      return canSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStateNotValid value) notValid,
    required TResult Function(_SignInStateCanSubmit value) canSubmit,
    required TResult Function(_SignInStateLoading value) loading,
    required TResult Function(_SignInStateSuccess value) success,
    required TResult Function(_SignInStateError value) error,
  }) {
    return canSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStateNotValid value)? notValid,
    TResult Function(_SignInStateCanSubmit value)? canSubmit,
    TResult Function(_SignInStateLoading value)? loading,
    TResult Function(_SignInStateSuccess value)? success,
    TResult Function(_SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (canSubmit != null) {
      return canSubmit(this);
    }
    return orElse();
  }
}

abstract class _SignInStateCanSubmit implements SignInState {
  const factory _SignInStateCanSubmit() = _$_SignInStateCanSubmit;
}

/// @nodoc
abstract class _$SignInStateLoadingCopyWith<$Res> {
  factory _$SignInStateLoadingCopyWith(
          _SignInStateLoading value, $Res Function(_SignInStateLoading) then) =
      __$SignInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInStateLoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateLoadingCopyWith<$Res> {
  __$SignInStateLoadingCopyWithImpl(
      _SignInStateLoading _value, $Res Function(_SignInStateLoading) _then)
      : super(_value, (v) => _then(v as _SignInStateLoading));

  @override
  _SignInStateLoading get _value => super._value as _SignInStateLoading;
}

/// @nodoc

class _$_SignInStateLoading
    with DiagnosticableTreeMixin
    implements _SignInStateLoading {
  const _$_SignInStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notValid,
    required TResult Function() canSubmit,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorText) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notValid,
    TResult Function()? canSubmit,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStateNotValid value) notValid,
    required TResult Function(_SignInStateCanSubmit value) canSubmit,
    required TResult Function(_SignInStateLoading value) loading,
    required TResult Function(_SignInStateSuccess value) success,
    required TResult Function(_SignInStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStateNotValid value)? notValid,
    TResult Function(_SignInStateCanSubmit value)? canSubmit,
    TResult Function(_SignInStateLoading value)? loading,
    TResult Function(_SignInStateSuccess value)? success,
    TResult Function(_SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SignInStateLoading implements SignInState {
  const factory _SignInStateLoading() = _$_SignInStateLoading;
}

/// @nodoc
abstract class _$SignInStateSuccessCopyWith<$Res> {
  factory _$SignInStateSuccessCopyWith(
          _SignInStateSuccess value, $Res Function(_SignInStateSuccess) then) =
      __$SignInStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInStateSuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateSuccessCopyWith<$Res> {
  __$SignInStateSuccessCopyWithImpl(
      _SignInStateSuccess _value, $Res Function(_SignInStateSuccess) _then)
      : super(_value, (v) => _then(v as _SignInStateSuccess));

  @override
  _SignInStateSuccess get _value => super._value as _SignInStateSuccess;
}

/// @nodoc

class _$_SignInStateSuccess
    with DiagnosticableTreeMixin
    implements _SignInStateSuccess {
  const _$_SignInStateSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notValid,
    required TResult Function() canSubmit,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorText) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notValid,
    TResult Function()? canSubmit,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStateNotValid value) notValid,
    required TResult Function(_SignInStateCanSubmit value) canSubmit,
    required TResult Function(_SignInStateLoading value) loading,
    required TResult Function(_SignInStateSuccess value) success,
    required TResult Function(_SignInStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStateNotValid value)? notValid,
    TResult Function(_SignInStateCanSubmit value)? canSubmit,
    TResult Function(_SignInStateLoading value)? loading,
    TResult Function(_SignInStateSuccess value)? success,
    TResult Function(_SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignInStateSuccess implements SignInState {
  const factory _SignInStateSuccess() = _$_SignInStateSuccess;
}

/// @nodoc
abstract class _$SignInStateErrorCopyWith<$Res> {
  factory _$SignInStateErrorCopyWith(
          _SignInStateError value, $Res Function(_SignInStateError) then) =
      __$SignInStateErrorCopyWithImpl<$Res>;
  $Res call({String errorText});
}

/// @nodoc
class __$SignInStateErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateErrorCopyWith<$Res> {
  __$SignInStateErrorCopyWithImpl(
      _SignInStateError _value, $Res Function(_SignInStateError) _then)
      : super(_value, (v) => _then(v as _SignInStateError));

  @override
  _SignInStateError get _value => super._value as _SignInStateError;

  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_SignInStateError(
      errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInStateError
    with DiagnosticableTreeMixin
    implements _SignInStateError {
  const _$_SignInStateError(this.errorText);

  @override
  final String errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.error(errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.error'))
      ..add(DiagnosticsProperty('errorText', errorText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInStateError &&
            (identical(other.errorText, errorText) ||
                const DeepCollectionEquality()
                    .equals(other.errorText, errorText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorText);

  @JsonKey(ignore: true)
  @override
  _$SignInStateErrorCopyWith<_SignInStateError> get copyWith =>
      __$SignInStateErrorCopyWithImpl<_SignInStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notValid,
    required TResult Function() canSubmit,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorText) error,
  }) {
    return error(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notValid,
    TResult Function()? canSubmit,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInStateNotValid value) notValid,
    required TResult Function(_SignInStateCanSubmit value) canSubmit,
    required TResult Function(_SignInStateLoading value) loading,
    required TResult Function(_SignInStateSuccess value) success,
    required TResult Function(_SignInStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInStateNotValid value)? notValid,
    TResult Function(_SignInStateCanSubmit value)? canSubmit,
    TResult Function(_SignInStateLoading value)? loading,
    TResult Function(_SignInStateSuccess value)? success,
    TResult Function(_SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SignInStateError implements SignInState {
  const factory _SignInStateError(String errorText) = _$_SignInStateError;

  String get errorText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInStateErrorCopyWith<_SignInStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
