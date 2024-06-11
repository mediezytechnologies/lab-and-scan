part of 'user_update_bloc.dart';

@freezed
class UserUpdateState with _$UserUpdateState {
  const factory UserUpdateState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    String? image,
    UpdateUserModel? model,
  }) = _Initial;

  factory UserUpdateState.initial() => const UserUpdateState(
        isError: false,
        isLoading: false,
        message: '',
        status: false,
      );
}
