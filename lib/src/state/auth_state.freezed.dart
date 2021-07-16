// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthStateInitializing initializing() {
    return const _AuthStateInitializing();
  }

  _AuthStateReady authenticated(String uid) {
    return _AuthStateReady(
      uid,
    );
  }

  _AuthStateError error(String errorCode, String errorMessage) {
    return _AuthStateError(
      errorCode,
      errorMessage,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String uid) authenticated,
    required TResult Function(String errorCode, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String uid)? authenticated,
    TResult Function(String errorCode, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitializing value) initializing,
    required TResult Function(_AuthStateReady value) authenticated,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitializing value)? initializing,
    TResult Function(_AuthStateReady value)? authenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$AuthStateInitializingCopyWith<$Res> {
  factory _$AuthStateInitializingCopyWith(_AuthStateInitializing value,
          $Res Function(_AuthStateInitializing) then) =
      __$AuthStateInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthStateInitializingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateInitializingCopyWith<$Res> {
  __$AuthStateInitializingCopyWithImpl(_AuthStateInitializing _value,
      $Res Function(_AuthStateInitializing) _then)
      : super(_value, (v) => _then(v as _AuthStateInitializing));

  @override
  _AuthStateInitializing get _value => super._value as _AuthStateInitializing;
}

/// @nodoc

class _$_AuthStateInitializing implements _AuthStateInitializing {
  const _$_AuthStateInitializing();

  @override
  String toString() {
    return 'AuthState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthStateInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String uid) authenticated,
    required TResult Function(String errorCode, String errorMessage) error,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String uid)? authenticated,
    TResult Function(String errorCode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitializing value) initializing,
    required TResult Function(_AuthStateReady value) authenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitializing value)? initializing,
    TResult Function(_AuthStateReady value)? authenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInitializing implements AuthState {
  const factory _AuthStateInitializing() = _$_AuthStateInitializing;
}

/// @nodoc
abstract class _$AuthStateReadyCopyWith<$Res> {
  factory _$AuthStateReadyCopyWith(
          _AuthStateReady value, $Res Function(_AuthStateReady) then) =
      __$AuthStateReadyCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$AuthStateReadyCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateReadyCopyWith<$Res> {
  __$AuthStateReadyCopyWithImpl(
      _AuthStateReady _value, $Res Function(_AuthStateReady) _then)
      : super(_value, (v) => _then(v as _AuthStateReady));

  @override
  _AuthStateReady get _value => super._value as _AuthStateReady;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_AuthStateReady(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateReady implements _AuthStateReady {
  const _$_AuthStateReady(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'AuthState.authenticated(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthStateReady &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$AuthStateReadyCopyWith<_AuthStateReady> get copyWith =>
      __$AuthStateReadyCopyWithImpl<_AuthStateReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String uid) authenticated,
    required TResult Function(String errorCode, String errorMessage) error,
  }) {
    return authenticated(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String uid)? authenticated,
    TResult Function(String errorCode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitializing value) initializing,
    required TResult Function(_AuthStateReady value) authenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitializing value)? initializing,
    TResult Function(_AuthStateReady value)? authenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateReady implements AuthState {
  const factory _AuthStateReady(String uid) = _$_AuthStateReady;

  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthStateReadyCopyWith<_AuthStateReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthStateErrorCopyWith<$Res> {
  factory _$AuthStateErrorCopyWith(
          _AuthStateError value, $Res Function(_AuthStateError) then) =
      __$AuthStateErrorCopyWithImpl<$Res>;
  $Res call({String errorCode, String errorMessage});
}

/// @nodoc
class __$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateErrorCopyWith<$Res> {
  __$AuthStateErrorCopyWithImpl(
      _AuthStateError _value, $Res Function(_AuthStateError) _then)
      : super(_value, (v) => _then(v as _AuthStateError));

  @override
  _AuthStateError get _value => super._value as _AuthStateError;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthStateError(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateError implements _AuthStateError {
  const _$_AuthStateError(this.errorCode, this.errorMessage);

  @override
  final String errorCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.error(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthStateError &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthStateErrorCopyWith<_AuthStateError> get copyWith =>
      __$AuthStateErrorCopyWithImpl<_AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String uid) authenticated,
    required TResult Function(String errorCode, String errorMessage) error,
  }) {
    return error(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String uid)? authenticated,
    TResult Function(String errorCode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitializing value) initializing,
    required TResult Function(_AuthStateReady value) authenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitializing value)? initializing,
    TResult Function(_AuthStateReady value)? authenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError implements AuthState {
  const factory _AuthStateError(String errorCode, String errorMessage) =
      _$_AuthStateError;

  String get errorCode => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthStateErrorCopyWith<_AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
