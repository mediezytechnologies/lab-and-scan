part of 'get_completed_bloc.dart';

@freezed
class GetCompletedState with _$GetCompletedState {
  const factory GetCompletedState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    required List<CompletedLabDetail> getCompleted,
  }) = _Initial;

  factory GetCompletedState.initial() => const GetCompletedState(
      getCompleted: [],
      isError: false,
      isLoading: false,
      message: '',
      status: false);
}
