// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/login/login_repository.dart';
import 'package:mediezy_lab_scan/domain/login/model/login_model.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  LoginBloc(this.loginRepository) : super(LoginState.initial()) {
    on<_ObscureChanged>((event, emit) {
      emit(state.copyWith(obscureText: !event.isObscure));
    });

    on<_AddLogin>(
      (event, emit) async {
        emit(
          state.copyWith(
              isLoading: true, isError: false, message: '', status: false),
        );
        final _result = await loginRepository.login(
            email: event.email, password: event.password);

        final _state = _result.fold(
          (ErrorModel error) {
            return state.copyWith(
                isLoading: false,
                isError: true,
                message: error.message.toString(),
                status: false);
          },
          (LoginModel model) {
            return state.copyWith(
                isLoading: false,
                isError: false,
                model: model,
                message: model.message.toString(),
                status: true);
          },
        );
        emit(_state);
      },
    );
  }
}
