part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.addLogin({
    required String email,
    required String password,
  }) = _AddLogin;

  const factory LoginEvent.obscureChanged(bool isObscure) = _ObscureChanged;
}

