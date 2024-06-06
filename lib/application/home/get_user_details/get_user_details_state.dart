part of 'get_user_details_bloc.dart';

@freezed
class GetUserDetailsState with _$GetUserDetailsState {
  const factory GetUserDetailsState({
     required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    required List<Testdetail> userdetails,
  })= _Initial;

    factory GetUserDetailsState.initial() => const GetUserDetailsState(
      userdetails: [],
      isError: false,
      isLoading: false,
      message: '',
      status: false);
}
