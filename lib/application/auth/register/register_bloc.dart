// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/auth/register/model/register_model.dart';
import 'package:mediezy_lab_scan/domain/auth/register/register_respository.dart';
part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository registerRepository;
  RegisterBloc(this.registerRepository) : super(RegisterState.initial()) {
    on<_ChangeType>((event, emit) {
      emit(
        state.copyWith(type: event.selectType),
      );
    });

    on<_ObscureChanged>((event, emit) {
      emit(
        state.copyWith(obscureText: !event.isObsure),
      );
    });

    on<_SelectImage>((event, emit) {
      emit(
        state.copyWith(image: event.image),
      );
    });

    on<_Register>(
      (event, emit) async {
        emit(
          state.copyWith(
              isLoading: true, isError: false, message: '', status: false),
        );

        final _result = await registerRepository.register(
          labName: event.labName,
          email: event.email,
          mobileNumber: event.mobileNumber,
          password: event.password,
          address: event.address,
          location: event.location,
          type: event.type,
          imagePath: event.imagePath,
        );

        final _state = _result.fold(
          (ErrorModel error) {
            return state.copyWith(
                isLoading: false,
                isError: true,
                message: error.message.toString(),
                status: false);
          },
          (RegisterModel model) {
            return state.copyWith(
                isLoading: false,
                isError: false,
                message: model.message.toString(),
                status: true,
                model: model);
          },
        );
        emit(_state);
      },
    );
  }
}
