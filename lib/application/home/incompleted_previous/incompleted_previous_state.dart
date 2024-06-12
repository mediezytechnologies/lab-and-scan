part of 'incompleted_previous_bloc.dart';

@freezed
class IncompletedPreviousState with _$IncompletedPreviousState {
  const factory IncompletedPreviousState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    required List<PreviousUnCompletedLabDetail> getPreviousInompleted,
  }) = _Initial;

  factory IncompletedPreviousState.initial() =>
      const IncompletedPreviousState(
          getPreviousInompleted: [],
          isError: false,
          isLoading: false,
          message: '',
          status: false);
}
