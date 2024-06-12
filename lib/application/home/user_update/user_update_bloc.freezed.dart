// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? phoneNumber,
            String? address, String? location, String? imagePath)
        update,
    required TResult Function(String? image) userUpdateImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? phoneNumber, String? address,
            String? location, String? imagePath)?
        update,
    TResult? Function(String? image)? userUpdateImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? phoneNumber, String? address,
            String? location, String? imagePath)?
        update,
    TResult Function(String? image)? userUpdateImageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_UserUpdateImageEvent value) userUpdateImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_UserUpdateImageEvent value)? userUpdateImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_UserUpdateImageEvent value)? userUpdateImageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateEventCopyWith<$Res> {
  factory $UserUpdateEventCopyWith(
          UserUpdateEvent value, $Res Function(UserUpdateEvent) then) =
      _$UserUpdateEventCopyWithImpl<$Res, UserUpdateEvent>;
}

/// @nodoc
class _$UserUpdateEventCopyWithImpl<$Res, $Val extends UserUpdateEvent>
    implements $UserUpdateEventCopyWith<$Res> {
  _$UserUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? name,
      String? phoneNumber,
      String? address,
      String? location,
      String? imagePath});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$UserUpdateEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$UpdateImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(
      this.name, this.phoneNumber, this.address, this.location, this.imagePath);

  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? location;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'UserUpdateEvent.update(name: $name, phoneNumber: $phoneNumber, address: $address, location: $location, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, address, location, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? phoneNumber,
            String? address, String? location, String? imagePath)
        update,
    required TResult Function(String? image) userUpdateImageEvent,
  }) {
    return update(name, phoneNumber, address, location, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? phoneNumber, String? address,
            String? location, String? imagePath)?
        update,
    TResult? Function(String? image)? userUpdateImageEvent,
  }) {
    return update?.call(name, phoneNumber, address, location, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? phoneNumber, String? address,
            String? location, String? imagePath)?
        update,
    TResult Function(String? image)? userUpdateImageEvent,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(name, phoneNumber, address, location, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_UserUpdateImageEvent value) userUpdateImageEvent,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_UserUpdateImageEvent value)? userUpdateImageEvent,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_UserUpdateImageEvent value)? userUpdateImageEvent,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UserUpdateEvent {
  const factory _Update(
      final String? name,
      final String? phoneNumber,
      final String? address,
      final String? location,
      final String? imagePath) = _$UpdateImpl;

  String? get name;
  String? get phoneNumber;
  String? get address;
  String? get location;
  String? get imagePath;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateImageEventImplCopyWith<$Res> {
  factory _$$UserUpdateImageEventImplCopyWith(_$UserUpdateImageEventImpl value,
          $Res Function(_$UserUpdateImageEventImpl) then) =
      __$$UserUpdateImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? image});
}

/// @nodoc
class __$$UserUpdateImageEventImplCopyWithImpl<$Res>
    extends _$UserUpdateEventCopyWithImpl<$Res, _$UserUpdateImageEventImpl>
    implements _$$UserUpdateImageEventImplCopyWith<$Res> {
  __$$UserUpdateImageEventImplCopyWithImpl(_$UserUpdateImageEventImpl _value,
      $Res Function(_$UserUpdateImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$UserUpdateImageEventImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserUpdateImageEventImpl implements _UserUpdateImageEvent {
  const _$UserUpdateImageEventImpl(this.image);

  @override
  final String? image;

  @override
  String toString() {
    return 'UserUpdateEvent.userUpdateImageEvent(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateImageEventImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateImageEventImplCopyWith<_$UserUpdateImageEventImpl>
      get copyWith =>
          __$$UserUpdateImageEventImplCopyWithImpl<_$UserUpdateImageEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? phoneNumber,
            String? address, String? location, String? imagePath)
        update,
    required TResult Function(String? image) userUpdateImageEvent,
  }) {
    return userUpdateImageEvent(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? phoneNumber, String? address,
            String? location, String? imagePath)?
        update,
    TResult? Function(String? image)? userUpdateImageEvent,
  }) {
    return userUpdateImageEvent?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? phoneNumber, String? address,
            String? location, String? imagePath)?
        update,
    TResult Function(String? image)? userUpdateImageEvent,
    required TResult orElse(),
  }) {
    if (userUpdateImageEvent != null) {
      return userUpdateImageEvent(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_UserUpdateImageEvent value) userUpdateImageEvent,
  }) {
    return userUpdateImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_UserUpdateImageEvent value)? userUpdateImageEvent,
  }) {
    return userUpdateImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_UserUpdateImageEvent value)? userUpdateImageEvent,
    required TResult orElse(),
  }) {
    if (userUpdateImageEvent != null) {
      return userUpdateImageEvent(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateImageEvent implements UserUpdateEvent {
  const factory _UserUpdateImageEvent(final String? image) =
      _$UserUpdateImageEventImpl;

  String? get image;
  @JsonKey(ignore: true)
  _$$UserUpdateImageEventImplCopyWith<_$UserUpdateImageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserUpdateState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  UpdateUserModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserUpdateStateCopyWith<UserUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateStateCopyWith<$Res> {
  factory $UserUpdateStateCopyWith(
          UserUpdateState value, $Res Function(UserUpdateState) then) =
      _$UserUpdateStateCopyWithImpl<$Res, UserUpdateState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      String? image,
      UpdateUserModel? model});
}

/// @nodoc
class _$UserUpdateStateCopyWithImpl<$Res, $Val extends UserUpdateState>
    implements $UserUpdateStateCopyWith<$Res> {
  _$UserUpdateStateCopyWithImpl(this._value, this._then);

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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UpdateUserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UserUpdateStateCopyWith<$Res> {
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
      String? image,
      UpdateUserModel? model});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserUpdateStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UpdateUserModel?,
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
      this.image,
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
  final String? image;
  @override
  final UpdateUserModel? model;

  @override
  String toString() {
    return 'UserUpdateState(isLoading: $isLoading, isError: $isError, message: $message, status: $status, image: $image, model: $model)';
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
            (identical(other.image, image) || other.image == image) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, message, status, image, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UserUpdateState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      final String? image,
      final UpdateUserModel? model}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  String? get image;
  @override
  UpdateUserModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
