// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_completed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCompletedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompleted value) getCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCompleted value)? getCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompleted value)? getCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCompletedEventCopyWith<$Res> {
  factory $GetCompletedEventCopyWith(
          GetCompletedEvent value, $Res Function(GetCompletedEvent) then) =
      _$GetCompletedEventCopyWithImpl<$Res, GetCompletedEvent>;
}

/// @nodoc
class _$GetCompletedEventCopyWithImpl<$Res, $Val extends GetCompletedEvent>
    implements $GetCompletedEventCopyWith<$Res> {
  _$GetCompletedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCompletedImplCopyWith<$Res> {
  factory _$$GetCompletedImplCopyWith(
          _$GetCompletedImpl value, $Res Function(_$GetCompletedImpl) then) =
      __$$GetCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCompletedImplCopyWithImpl<$Res>
    extends _$GetCompletedEventCopyWithImpl<$Res, _$GetCompletedImpl>
    implements _$$GetCompletedImplCopyWith<$Res> {
  __$$GetCompletedImplCopyWithImpl(
      _$GetCompletedImpl _value, $Res Function(_$GetCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCompletedImpl implements _GetCompleted {
  const _$GetCompletedImpl();

  @override
  String toString() {
    return 'GetCompletedEvent.getCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCompleted,
  }) {
    return getCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCompleted,
  }) {
    return getCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCompleted,
    required TResult orElse(),
  }) {
    if (getCompleted != null) {
      return getCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompleted value) getCompleted,
  }) {
    return getCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCompleted value)? getCompleted,
  }) {
    return getCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompleted value)? getCompleted,
    required TResult orElse(),
  }) {
    if (getCompleted != null) {
      return getCompleted(this);
    }
    return orElse();
  }
}

abstract class _GetCompleted implements GetCompletedEvent {
  const factory _GetCompleted() = _$GetCompletedImpl;
}

/// @nodoc
mixin _$GetCompletedState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  List<CompletedLabDetail> get getCompleted =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCompletedStateCopyWith<GetCompletedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCompletedStateCopyWith<$Res> {
  factory $GetCompletedStateCopyWith(
          GetCompletedState value, $Res Function(GetCompletedState) then) =
      _$GetCompletedStateCopyWithImpl<$Res, GetCompletedState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      List<CompletedLabDetail> getCompleted});
}

/// @nodoc
class _$GetCompletedStateCopyWithImpl<$Res, $Val extends GetCompletedState>
    implements $GetCompletedStateCopyWith<$Res> {
  _$GetCompletedStateCopyWithImpl(this._value, this._then);

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
    Object? getCompleted = null,
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
      getCompleted: null == getCompleted
          ? _value.getCompleted
          : getCompleted // ignore: cast_nullable_to_non_nullable
              as List<CompletedLabDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GetCompletedStateCopyWith<$Res> {
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
      List<CompletedLabDetail> getCompleted});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetCompletedStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? getCompleted = null,
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
      getCompleted: null == getCompleted
          ? _value._getCompleted
          : getCompleted // ignore: cast_nullable_to_non_nullable
              as List<CompletedLabDetail>,
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
      required final List<CompletedLabDetail> getCompleted})
      : _getCompleted = getCompleted;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String message;
  @override
  final bool status;
  final List<CompletedLabDetail> _getCompleted;
  @override
  List<CompletedLabDetail> get getCompleted {
    if (_getCompleted is EqualUnmodifiableListView) return _getCompleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getCompleted);
  }

  @override
  String toString() {
    return 'GetCompletedState(isLoading: $isLoading, isError: $isError, message: $message, status: $status, getCompleted: $getCompleted)';
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
                .equals(other._getCompleted, _getCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, message,
      status, const DeepCollectionEquality().hash(_getCompleted));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements GetCompletedState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      required final List<CompletedLabDetail> getCompleted}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  List<CompletedLabDetail> get getCompleted;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
