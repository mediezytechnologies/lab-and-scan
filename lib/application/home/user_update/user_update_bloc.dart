// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/home/update_user/model/update_user_model.dart';
import 'package:mediezy_lab_scan/domain/home/update_user/update_user_repository.dart';
import '../../../domain/core/error/error_model.dart';
part 'user_update_event.dart';
part 'user_update_state.dart';
part 'user_update_bloc.freezed.dart';

@injectable
class UserUpdateBloc extends Bloc<UserUpdateEvent, UserUpdateState> {
  final UpdateUserRepository updateUserRepository;
  UserUpdateBloc(this.updateUserRepository) : super(UserUpdateState.initial()) {
    on<_Update>(
      (event, emit) async {
        emit(
          state.copyWith(
              isLoading: true, isError: false, message: '', status: false),
        );
        final _result = await updateUserRepository.updateUserRepo(
          event.imagePath,
          event.name,
          event.phoneNumber,
          event.address,
          event.location,
        );
        final _state = _result.fold(
          (ErrorModel error) {
            return state.copyWith(
                isLoading: false,
                isError: true,
                message: error.message.toString(),
                status: false);
          },
          (UpdateUserModel model) {
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

    on<_UserUpdateImageEvent>((event, emit) {
      emit(
        state.copyWith(image: event.image, status: false),
      );
    });
  }
}
