// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)
        register,
    required TResult Function(int selectType) changeType,
    required TResult Function(bool isObsure) obscureChanged,
    required TResult Function(String? image) selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult? Function(int selectType)? changeType,
    TResult? Function(bool isObsure)? obscureChanged,
    TResult? Function(String? image)? selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult Function(int selectType)? changeType,
    TResult Function(bool isObsure)? obscureChanged,
    TResult Function(String? image)? selectImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_ObscureChanged value) obscureChanged,
    required TResult Function(_SelectImage value) selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_ObscureChanged value)? obscureChanged,
    TResult? Function(_SelectImage value)? selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_ObscureChanged value)? obscureChanged,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String labName,
      String email,
      String password,
      String mobileNumber,
      String address,
      String location,
      int type,
      String? imagePath});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labName = null,
    Object? email = null,
    Object? password = null,
    Object? mobileNumber = null,
    Object? address = null,
    Object? location = null,
    Object? type = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$RegisterImpl(
      labName: null == labName
          ? _value.labName
          : labName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      {required this.labName,
      required this.email,
      required this.password,
      required this.mobileNumber,
      required this.address,
      required this.location,
      required this.type,
      this.imagePath});

  @override
  final String labName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String mobileNumber;
  @override
  final String address;
  @override
  final String location;
  @override
  final int type;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'RegisterEvent.register(labName: $labName, email: $email, password: $password, mobileNumber: $mobileNumber, address: $address, location: $location, type: $type, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.labName, labName) || other.labName == labName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labName, email, password,
      mobileNumber, address, location, type, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)
        register,
    required TResult Function(int selectType) changeType,
    required TResult Function(bool isObsure) obscureChanged,
    required TResult Function(String? image) selectImage,
  }) {
    return register(labName, email, password, mobileNumber, address, location,
        type, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult? Function(int selectType)? changeType,
    TResult? Function(bool isObsure)? obscureChanged,
    TResult? Function(String? image)? selectImage,
  }) {
    return register?.call(labName, email, password, mobileNumber, address,
        location, type, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult Function(int selectType)? changeType,
    TResult Function(bool isObsure)? obscureChanged,
    TResult Function(String? image)? selectImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(labName, email, password, mobileNumber, address, location,
          type, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_ObscureChanged value) obscureChanged,
    required TResult Function(_SelectImage value) selectImage,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_ObscureChanged value)? obscureChanged,
    TResult? Function(_SelectImage value)? selectImage,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_ObscureChanged value)? obscureChanged,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register(
      {required final String labName,
      required final String email,
      required final String password,
      required final String mobileNumber,
      required final String address,
      required final String location,
      required final int type,
      final String? imagePath}) = _$RegisterImpl;

  String get labName;
  String get email;
  String get password;
  String get mobileNumber;
  String get address;
  String get location;
  int get type;
  String? get imagePath;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTypeImplCopyWith<$Res> {
  factory _$$ChangeTypeImplCopyWith(
          _$ChangeTypeImpl value, $Res Function(_$ChangeTypeImpl) then) =
      __$$ChangeTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectType});
}

/// @nodoc
class __$$ChangeTypeImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ChangeTypeImpl>
    implements _$$ChangeTypeImplCopyWith<$Res> {
  __$$ChangeTypeImplCopyWithImpl(
      _$ChangeTypeImpl _value, $Res Function(_$ChangeTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectType = null,
  }) {
    return _then(_$ChangeTypeImpl(
      null == selectType
          ? _value.selectType
          : selectType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTypeImpl implements _ChangeType {
  const _$ChangeTypeImpl(this.selectType);

  @override
  final int selectType;

  @override
  String toString() {
    return 'RegisterEvent.changeType(selectType: $selectType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTypeImpl &&
            (identical(other.selectType, selectType) ||
                other.selectType == selectType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTypeImplCopyWith<_$ChangeTypeImpl> get copyWith =>
      __$$ChangeTypeImplCopyWithImpl<_$ChangeTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)
        register,
    required TResult Function(int selectType) changeType,
    required TResult Function(bool isObsure) obscureChanged,
    required TResult Function(String? image) selectImage,
  }) {
    return changeType(selectType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult? Function(int selectType)? changeType,
    TResult? Function(bool isObsure)? obscureChanged,
    TResult? Function(String? image)? selectImage,
  }) {
    return changeType?.call(selectType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult Function(int selectType)? changeType,
    TResult Function(bool isObsure)? obscureChanged,
    TResult Function(String? image)? selectImage,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(selectType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_ObscureChanged value) obscureChanged,
    required TResult Function(_SelectImage value) selectImage,
  }) {
    return changeType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_ObscureChanged value)? obscureChanged,
    TResult? Function(_SelectImage value)? selectImage,
  }) {
    return changeType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_ObscureChanged value)? obscureChanged,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(this);
    }
    return orElse();
  }
}

abstract class _ChangeType implements RegisterEvent {
  const factory _ChangeType(final int selectType) = _$ChangeTypeImpl;

  int get selectType;
  @JsonKey(ignore: true)
  _$$ChangeTypeImplCopyWith<_$ChangeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureChangedImplCopyWith<$Res> {
  factory _$$ObscureChangedImplCopyWith(_$ObscureChangedImpl value,
          $Res Function(_$ObscureChangedImpl) then) =
      __$$ObscureChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObsure});
}

/// @nodoc
class __$$ObscureChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ObscureChangedImpl>
    implements _$$ObscureChangedImplCopyWith<$Res> {
  __$$ObscureChangedImplCopyWithImpl(
      _$ObscureChangedImpl _value, $Res Function(_$ObscureChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObsure = null,
  }) {
    return _then(_$ObscureChangedImpl(
      null == isObsure
          ? _value.isObsure
          : isObsure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ObscureChangedImpl implements _ObscureChanged {
  const _$ObscureChangedImpl(this.isObsure);

  @override
  final bool isObsure;

  @override
  String toString() {
    return 'RegisterEvent.obscureChanged(isObsure: $isObsure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObscureChangedImpl &&
            (identical(other.isObsure, isObsure) ||
                other.isObsure == isObsure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObsure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObscureChangedImplCopyWith<_$ObscureChangedImpl> get copyWith =>
      __$$ObscureChangedImplCopyWithImpl<_$ObscureChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)
        register,
    required TResult Function(int selectType) changeType,
    required TResult Function(bool isObsure) obscureChanged,
    required TResult Function(String? image) selectImage,
  }) {
    return obscureChanged(isObsure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult? Function(int selectType)? changeType,
    TResult? Function(bool isObsure)? obscureChanged,
    TResult? Function(String? image)? selectImage,
  }) {
    return obscureChanged?.call(isObsure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult Function(int selectType)? changeType,
    TResult Function(bool isObsure)? obscureChanged,
    TResult Function(String? image)? selectImage,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(isObsure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_ObscureChanged value) obscureChanged,
    required TResult Function(_SelectImage value) selectImage,
  }) {
    return obscureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_ObscureChanged value)? obscureChanged,
    TResult? Function(_SelectImage value)? selectImage,
  }) {
    return obscureChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_ObscureChanged value)? obscureChanged,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(this);
    }
    return orElse();
  }
}

abstract class _ObscureChanged implements RegisterEvent {
  const factory _ObscureChanged(final bool isObsure) = _$ObscureChangedImpl;

  bool get isObsure;
  @JsonKey(ignore: true)
  _$$ObscureChangedImplCopyWith<_$ObscureChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImageImplCopyWith<$Res> {
  factory _$$SelectImageImplCopyWith(
          _$SelectImageImpl value, $Res Function(_$SelectImageImpl) then) =
      __$$SelectImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? image});
}

/// @nodoc
class __$$SelectImageImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SelectImageImpl>
    implements _$$SelectImageImplCopyWith<$Res> {
  __$$SelectImageImplCopyWithImpl(
      _$SelectImageImpl _value, $Res Function(_$SelectImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$SelectImageImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectImageImpl implements _SelectImage {
  const _$SelectImageImpl(this.image);

  @override
  final String? image;

  @override
  String toString() {
    return 'RegisterEvent.selectImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImageImplCopyWith<_$SelectImageImpl> get copyWith =>
      __$$SelectImageImplCopyWithImpl<_$SelectImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)
        register,
    required TResult Function(int selectType) changeType,
    required TResult Function(bool isObsure) obscureChanged,
    required TResult Function(String? image) selectImage,
  }) {
    return selectImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult? Function(int selectType)? changeType,
    TResult? Function(bool isObsure)? obscureChanged,
    TResult? Function(String? image)? selectImage,
  }) {
    return selectImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String labName,
            String email,
            String password,
            String mobileNumber,
            String address,
            String location,
            int type,
            String? imagePath)?
        register,
    TResult Function(int selectType)? changeType,
    TResult Function(bool isObsure)? obscureChanged,
    TResult Function(String? image)? selectImage,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_ObscureChanged value) obscureChanged,
    required TResult Function(_SelectImage value) selectImage,
  }) {
    return selectImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_ObscureChanged value)? obscureChanged,
    TResult? Function(_SelectImage value)? selectImage,
  }) {
    return selectImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_ObscureChanged value)? obscureChanged,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(this);
    }
    return orElse();
  }
}

abstract class _SelectImage implements RegisterEvent {
  const factory _SelectImage(final String? image) = _$SelectImageImpl;

  String? get image;
  @JsonKey(ignore: true)
  _$$SelectImageImplCopyWith<_$SelectImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  int get type => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  RegisterModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {int type,
      bool obscureText,
      bool isLoading,
      bool isError,
      String message,
      bool status,
      String? image,
      RegisterModel? model});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? obscureText = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? image = freezed,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int type,
      bool obscureText,
      bool isLoading,
      bool isError,
      String message,
      bool status,
      String? image,
      RegisterModel? model});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? obscureText = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? image = freezed,
    Object? model = freezed,
  }) {
    return _then(_$InitialImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.type,
      required this.obscureText,
      required this.isLoading,
      required this.isError,
      required this.message,
      required this.status,
      this.image,
      this.model});

  @override
  final int type;
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
  final String? image;
  @override
  final RegisterModel? model;

  @override
  String toString() {
    return 'RegisterState(type: $type, obscureText: $obscureText, isLoading: $isLoading, isError: $isError, message: $message, status: $status, image: $image, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, obscureText, isLoading,
      isError, message, status, image, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements RegisterState {
  const factory _Initial(
      {required final int type,
      required final bool obscureText,
      required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      final String? image,
      final RegisterModel? model}) = _$InitialImpl;

  @override
  int get type;
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
  String? get image;
  @override
  RegisterModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
