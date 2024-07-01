// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_previous_completed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPreviousCompletedEvent {
  String get selectedDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedDate) getPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedDate)? getPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedDate)? getPrevious,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrevious value) getPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrevious value)? getPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrevious value)? getPrevious,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPreviousCompletedEventCopyWith<GetPreviousCompletedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPreviousCompletedEventCopyWith<$Res> {
  factory $GetPreviousCompletedEventCopyWith(GetPreviousCompletedEvent value,
          $Res Function(GetPreviousCompletedEvent) then) =
      _$GetPreviousCompletedEventCopyWithImpl<$Res, GetPreviousCompletedEvent>;
  @useResult
  $Res call({String selectedDate});
}

/// @nodoc
class _$GetPreviousCompletedEventCopyWithImpl<$Res,
        $Val extends GetPreviousCompletedEvent>
    implements $GetPreviousCompletedEventCopyWith<$Res> {
  _$GetPreviousCompletedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPreviousImplCopyWith<$Res>
    implements $GetPreviousCompletedEventCopyWith<$Res> {
  factory _$$GetPreviousImplCopyWith(
          _$GetPreviousImpl value, $Res Function(_$GetPreviousImpl) then) =
      __$$GetPreviousImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedDate});
}

/// @nodoc
class __$$GetPreviousImplCopyWithImpl<$Res>
    extends _$GetPreviousCompletedEventCopyWithImpl<$Res, _$GetPreviousImpl>
    implements _$$GetPreviousImplCopyWith<$Res> {
  __$$GetPreviousImplCopyWithImpl(
      _$GetPreviousImpl _value, $Res Function(_$GetPreviousImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$GetPreviousImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPreviousImpl implements _GetPrevious {
  const _$GetPreviousImpl(this.selectedDate);

  @override
  final String selectedDate;

  @override
  String toString() {
    return 'GetPreviousCompletedEvent.getPrevious(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPreviousImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPreviousImplCopyWith<_$GetPreviousImpl> get copyWith =>
      __$$GetPreviousImplCopyWithImpl<_$GetPreviousImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedDate) getPrevious,
  }) {
    return getPrevious(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedDate)? getPrevious,
  }) {
    return getPrevious?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedDate)? getPrevious,
    required TResult orElse(),
  }) {
    if (getPrevious != null) {
      return getPrevious(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrevious value) getPrevious,
  }) {
    return getPrevious(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrevious value)? getPrevious,
  }) {
    return getPrevious?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrevious value)? getPrevious,
    required TResult orElse(),
  }) {
    if (getPrevious != null) {
      return getPrevious(this);
    }
    return orElse();
  }
}

abstract class _GetPrevious implements GetPreviousCompletedEvent {
  const factory _GetPrevious(final String selectedDate) = _$GetPreviousImpl;

  @override
  String get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$GetPreviousImplCopyWith<_$GetPreviousImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPreviousCompletedState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  List<CompletedLabDetail> get getPreviousCompleted =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPreviousCompletedStateCopyWith<GetPreviousCompletedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPreviousCompletedStateCopyWith<$Res> {
  factory $GetPreviousCompletedStateCopyWith(GetPreviousCompletedState value,
          $Res Function(GetPreviousCompletedState) then) =
      _$GetPreviousCompletedStateCopyWithImpl<$Res, GetPreviousCompletedState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      List<CompletedLabDetail> getPreviousCompleted});
}

/// @nodoc
class _$GetPreviousCompletedStateCopyWithImpl<$Res,
        $Val extends GetPreviousCompletedState>
    implements $GetPreviousCompletedStateCopyWith<$Res> {
  _$GetPreviousCompletedStateCopyWithImpl(this._value, this._then);

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
    Object? getPreviousCompleted = null,
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
      getPreviousCompleted: null == getPreviousCompleted
          ? _value.getPreviousCompleted
          : getPreviousCompleted // ignore: cast_nullable_to_non_nullable
              as List<CompletedLabDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GetPreviousCompletedStateCopyWith<$Res> {
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
      List<CompletedLabDetail> getPreviousCompleted});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetPreviousCompletedStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? getPreviousCompleted = null,
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
      getPreviousCompleted: null == getPreviousCompleted
          ? _value._getPreviousCompleted
          : getPreviousCompleted // ignore: cast_nullable_to_non_nullable
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
      required final List<CompletedLabDetail> getPreviousCompleted})
      : _getPreviousCompleted = getPreviousCompleted;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String message;
  @override
  final bool status;
  final List<CompletedLabDetail> _getPreviousCompleted;
  @override
  List<CompletedLabDetail> get getPreviousCompleted {
    if (_getPreviousCompleted is EqualUnmodifiableListView)
      return _getPreviousCompleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getPreviousCompleted);
  }

  @override
  String toString() {
    return 'GetPreviousCompletedState(isLoading: $isLoading, isError: $isError, message: $message, status: $status, getPreviousCompleted: $getPreviousCompleted)';
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
                .equals(other._getPreviousCompleted, _getPreviousCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, message,
      status, const DeepCollectionEquality().hash(_getPreviousCompleted));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements GetPreviousCompletedState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool isError,
          required final String message,
          required final bool status,
          required final List<CompletedLabDetail> getPreviousCompleted}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  List<CompletedLabDetail> get getPreviousCompleted;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
