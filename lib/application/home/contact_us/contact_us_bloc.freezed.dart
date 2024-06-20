// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactUsEvent {
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String message) contactUs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String message)? contactUs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String message)? contactUs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUs value) contactUs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUs value)? contactUs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUs value)? contactUs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsEventCopyWith<ContactUsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsEventCopyWith<$Res> {
  factory $ContactUsEventCopyWith(
          ContactUsEvent value, $Res Function(ContactUsEvent) then) =
      _$ContactUsEventCopyWithImpl<$Res, ContactUsEvent>;
  @useResult
  $Res call({String email, String message});
}

/// @nodoc
class _$ContactUsEventCopyWithImpl<$Res, $Val extends ContactUsEvent>
    implements $ContactUsEventCopyWith<$Res> {
  _$ContactUsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactUsImplCopyWith<$Res>
    implements $ContactUsEventCopyWith<$Res> {
  factory _$$ContactUsImplCopyWith(
          _$ContactUsImpl value, $Res Function(_$ContactUsImpl) then) =
      __$$ContactUsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String message});
}

/// @nodoc
class __$$ContactUsImplCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res, _$ContactUsImpl>
    implements _$$ContactUsImplCopyWith<$Res> {
  __$$ContactUsImplCopyWithImpl(
      _$ContactUsImpl _value, $Res Function(_$ContactUsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_$ContactUsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactUsImpl implements _ContactUs {
  const _$ContactUsImpl({required this.email, required this.message});

  @override
  final String email;
  @override
  final String message;

  @override
  String toString() {
    return 'ContactUsEvent.contactUs(email: $email, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUsImplCopyWith<_$ContactUsImpl> get copyWith =>
      __$$ContactUsImplCopyWithImpl<_$ContactUsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String message) contactUs,
  }) {
    return contactUs(email, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String message)? contactUs,
  }) {
    return contactUs?.call(email, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String message)? contactUs,
    required TResult orElse(),
  }) {
    if (contactUs != null) {
      return contactUs(email, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUs value) contactUs,
  }) {
    return contactUs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUs value)? contactUs,
  }) {
    return contactUs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUs value)? contactUs,
    required TResult orElse(),
  }) {
    if (contactUs != null) {
      return contactUs(this);
    }
    return orElse();
  }
}

abstract class _ContactUs implements ContactUsEvent {
  const factory _ContactUs(
      {required final String email,
      required final String message}) = _$ContactUsImpl;

  @override
  String get email;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ContactUsImplCopyWith<_$ContactUsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactUsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  ContactUsModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsStateCopyWith<ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsStateCopyWith<$Res> {
  factory $ContactUsStateCopyWith(
          ContactUsState value, $Res Function(ContactUsState) then) =
      _$ContactUsStateCopyWithImpl<$Res, ContactUsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      ContactUsModel? model});
}

/// @nodoc
class _$ContactUsStateCopyWithImpl<$Res, $Val extends ContactUsState>
    implements $ContactUsStateCopyWith<$Res> {
  _$ContactUsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
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
              as ContactUsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ContactUsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      ContactUsModel? model});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ContactUsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? model = freezed,
  }) {
    return _then(_$InitialImpl(
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
              as ContactUsModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required this.message,
      required this.status,
      this.model});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String message;
  @override
  final bool status;
  @override
  final ContactUsModel? model;

  @override
  String toString() {
    return 'ContactUsState(isLoading: $isLoading, isError: $isError, message: $message, status: $status, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, message, status, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ContactUsState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      final ContactUsModel? model}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  ContactUsModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
