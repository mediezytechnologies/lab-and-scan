part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool obscureText,
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    LoginModel? model,
  }) = _Initial;

  factory LoginState.initial() => const LoginState(
      obscureText: true,
      isError: false,
      isLoading: false,
      message: '',
      status: false);
}
