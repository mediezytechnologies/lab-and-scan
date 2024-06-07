part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState(
    {
    required int type,
    required bool obscureText,
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    String? image,
    RegisterModel? model,
  }
  ) = _Initial;

  factory RegisterState.initial() => const RegisterState(
        type: 1,
        obscureText: true,
        isError: false,
        isLoading: false,
        message: '',
        status: false,
      );
}
