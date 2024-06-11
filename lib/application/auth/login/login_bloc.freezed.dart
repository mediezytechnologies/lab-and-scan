// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) addLogin,
    required TResult Function(bool isObscure) obscureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? addLogin,
    TResult? Function(bool isObscure)? obscureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? addLogin,
    TResult Function(bool isObscure)? obscureChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddLogin value) addLogin,
    required TResult Function(_ObscureChanged value) obscureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddLogin value)? addLogin,
    TResult? Function(_ObscureChanged value)? obscureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLogin value)? addLogin,
    TResult Function(_ObscureChanged value)? obscureChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddLoginImplCopyWith<$Res> {
  factory _$$AddLoginImplCopyWith(
          _$AddLoginImpl value, $Res Function(_$AddLoginImpl) then) =
      __$$AddLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AddLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$AddLoginImpl>
    implements _$$AddLoginImplCopyWith<$Res> {
  __$$AddLoginImplCopyWithImpl(
      _$AddLoginImpl _value, $Res Function(_$AddLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AddLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddLoginImpl implements _AddLogin {
  const _$AddLoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.addLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLoginImplCopyWith<_$AddLoginImpl> get copyWith =>
      __$$AddLoginImplCopyWithImpl<_$AddLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) addLogin,
    required TResult Function(bool isObscure) obscureChanged,
  }) {
    return addLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? addLogin,
    TResult? Function(bool isObscure)? obscureChanged,
  }) {
    return addLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? addLogin,
    TResult Function(bool isObscure)? obscureChanged,
    required TResult orElse(),
  }) {
    if (addLogin != null) {
      return addLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddLogin value) addLogin,
    required TResult Function(_ObscureChanged value) obscureChanged,
  }) {
    return addLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddLogin value)? addLogin,
    TResult? Function(_ObscureChanged value)? obscureChanged,
  }) {
    return addLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLogin value)? addLogin,
    TResult Function(_ObscureChanged value)? obscureChanged,
    required TResult orElse(),
  }) {
    if (addLogin != null) {
      return addLogin(this);
    }
    return orElse();
  }
}

abstract class _AddLogin implements LoginEvent {
  const factory _AddLogin(
      {required final String email,
      required final String password}) = _$AddLoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AddLoginImplCopyWith<_$AddLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureChangedImplCopyWith<$Res> {
  factory _$$ObscureChangedImplCopyWith(_$ObscureChangedImpl value,
          $Res Function(_$ObscureChangedImpl) then) =
      __$$ObscureChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$ObscureChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ObscureChangedImpl>
    implements _$$ObscureChangedImplCopyWith<$Res> {
  __$$ObscureChangedImplCopyWithImpl(
      _$ObscureChangedImpl _value, $Res Function(_$ObscureChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$ObscureChangedImpl(
      null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ObscureChangedImpl implements _ObscureChanged {
  const _$ObscureChangedImpl(this.isObscure);

  @override
  final bool isObscure;

  @override
  String toString() {
    return 'LoginEvent.obscureChanged(isObscure: $isObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObscureChangedImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObscureChangedImplCopyWith<_$ObscureChangedImpl> get copyWith =>
      __$$ObscureChangedImplCopyWithImpl<_$ObscureChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) addLogin,
    required TResult Function(bool isObscure) obscureChanged,
  }) {
    return obscureChanged(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? addLogin,
    TResult? Function(bool isObscure)? obscureChanged,
  }) {
    return obscureChanged?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? addLogin,
    TResult Function(bool isObscure)? obscureChanged,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(isObscure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddLogin value) addLogin,
    required TResult Function(_ObscureChanged value) obscureChanged,
  }) {
    return obscureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddLogin value)? addLogin,
    TResult? Function(_ObscureChanged value)? obscureChanged,
  }) {
    return obscureChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLogin value)? addLogin,
    TResult Function(_ObscureChanged value)? obscureChanged,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(this);
    }
    return orElse();
  }
}

abstract class _ObscureChanged implements LoginEvent {
  const factory _ObscureChanged(final bool isObscure) = _$ObscureChangedImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$ObscureChangedImplCopyWith<_$ObscureChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get obscureText => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  LoginModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool obscureText,
      bool isLoading,
      bool isError,
      String message,
      bool status,
      LoginModel? model});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obscureText = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool obscureText,
      bool isLoading,
      bool isError,
      String message,
      bool status,
      LoginModel? model});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obscureText = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? model = freezed,
  }) {
    return _then(_$InitialImpl(
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.obscureText,
      required this.isLoading,
      required this.isError,
      required this.message,
      required this.status,
      this.model});

  @override
  final bool obscureText;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String message;
  @override
  final bool status;
  @override
  final LoginModel? model;

  @override
  String toString() {
    return 'LoginState(obscureText: $obscureText, isLoading: $isLoading, isError: $isError, message: $message, status: $status, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, obscureText, isLoading, isError, message, status, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements LoginState {
  const factory _Initial(
      {required final bool obscureText,
      required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      final LoginModel? model}) = _$InitialImpl;

  @override
  bool get obscureText;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  LoginModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
