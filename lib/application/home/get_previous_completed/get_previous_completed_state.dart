part of 'get_previous_completed_bloc.dart';

@freezed
class GetPreviousCompletedState with _$GetPreviousCompletedState {
  const factory GetPreviousCompletedState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    required List<PreviousCompletedLabDetail> getPreviousCompleted,
  }) = _Initial;

  factory GetPreviousCompletedState.initial() =>
      const GetPreviousCompletedState(
          getPreviousCompleted: [],
          isError: false,
          isLoading: false,
          message: '',
          status: false);
}
