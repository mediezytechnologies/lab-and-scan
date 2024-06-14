part of 'get_up_coming_bloc.dart';

@freezed
class GetUpComingState with _$GetUpComingState {
  const factory GetUpComingState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    required List<UpComingLabDetail> getUpComing,
  }) = _Initial;

  factory GetUpComingState.initial() => const GetUpComingState(
      getUpComing: [],
      isError: false,
      isLoading: false,
      message: '',
      status: false);
}
