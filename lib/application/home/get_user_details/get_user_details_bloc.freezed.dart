// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserDetails value)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDetailsEventCopyWith<$Res> {
  factory $GetUserDetailsEventCopyWith(
          GetUserDetailsEvent value, $Res Function(GetUserDetailsEvent) then) =
      _$GetUserDetailsEventCopyWithImpl<$Res, GetUserDetailsEvent>;
}

/// @nodoc
class _$GetUserDetailsEventCopyWithImpl<$Res, $Val extends GetUserDetailsEvent>
    implements $GetUserDetailsEventCopyWith<$Res> {
  _$GetUserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchUserDetailsImplCopyWith<$Res> {
  factory _$$FetchUserDetailsImplCopyWith(_$FetchUserDetailsImpl value,
          $Res Function(_$FetchUserDetailsImpl) then) =
      __$$FetchUserDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserDetailsImplCopyWithImpl<$Res>
    extends _$GetUserDetailsEventCopyWithImpl<$Res, _$FetchUserDetailsImpl>
    implements _$$FetchUserDetailsImplCopyWith<$Res> {
  __$$FetchUserDetailsImplCopyWithImpl(_$FetchUserDetailsImpl _value,
      $Res Function(_$FetchUserDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchUserDetailsImpl
    with DiagnosticableTreeMixin
    implements _FetchUserDetails {
  const _$FetchUserDetailsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetUserDetailsEvent.fetchUserDetails()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'GetUserDetailsEvent.fetchUserDetails'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUserDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUserDetails,
  }) {
    return fetchUserDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUserDetails,
  }) {
    return fetchUserDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDetails implements GetUserDetailsEvent {
  const factory _FetchUserDetails() = _$FetchUserDetailsImpl;
}

/// @nodoc
mixin _$GetUserDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  List<Testdetail> get userdetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetUserDetailsStateCopyWith<GetUserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDetailsStateCopyWith<$Res> {
  factory $GetUserDetailsStateCopyWith(
          GetUserDetailsState value, $Res Function(GetUserDetailsState) then) =
      _$GetUserDetailsStateCopyWithImpl<$Res, GetUserDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      List<Testdetail> userdetails});
}

/// @nodoc
class _$GetUserDetailsStateCopyWithImpl<$Res, $Val extends GetUserDetailsState>
    implements $GetUserDetailsStateCopyWith<$Res> {
  _$GetUserDetailsStateCopyWithImpl(this._value, this._then);

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
    Object? userdetails = null,
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
      userdetails: null == userdetails
          ? _value.userdetails
          : userdetails // ignore: cast_nullable_to_non_nullable
              as List<Testdetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GetUserDetailsStateCopyWith<$Res> {
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
      List<Testdetail> userdetails});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetUserDetailsStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? userdetails = null,
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
      userdetails: null == userdetails
          ? _value._userdetails
          : userdetails // ignore: cast_nullable_to_non_nullable
              as List<Testdetail>,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required this.message,
      required this.status,
      required final List<Testdetail> userdetails})
      : _userdetails = userdetails;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String message;
  @override
  final bool status;
  final List<Testdetail> _userdetails;
  @override
  List<Testdetail> get userdetails {
    if (_userdetails is EqualUnmodifiableListView) return _userdetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userdetails);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetUserDetailsState(isLoading: $isLoading, isError: $isError, message: $message, status: $status, userdetails: $userdetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetUserDetailsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('userdetails', userdetails));
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
            const DeepCollectionEquality()
                .equals(other._userdetails, _userdetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, message,
      status, const DeepCollectionEquality().hash(_userdetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements GetUserDetailsState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      required final List<Testdetail> userdetails}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  List<Testdetail> get userdetails;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
