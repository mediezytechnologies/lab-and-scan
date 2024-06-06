// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/get_user_details/get_user_details_repository.dart';
import 'package:mediezy_lab_scan/domain/home/get_user_details/model/testdetail.dart';
part 'get_user_details_event.dart';
part 'get_user_details_state.dart';
part 'get_user_details_bloc.freezed.dart';

@injectable
class GetUserDetailsBloc
    extends Bloc<GetUserDetailsEvent, GetUserDetailsState> {
  final GetUserDetailsRepository getUserDetailsRepository;
  GetUserDetailsBloc(this.getUserDetailsRepository)
      : super(GetUserDetailsState.initial()) {
    on<GetUserDetailsEvent>((event, emit) async {
      emit(
        state.copyWith(
            userdetails: [],
            isLoading: true,
            isError: false,
            message: '',
            status: false),
      );
      final _result = await getUserDetailsRepository.getUserDetails();
      final _state = _result.fold((ErrorModel error) {
        return state.copyWith(
            userdetails: [],
            isLoading: false,
            isError: true,
            message: error.message.toString(),
            status: false);
      }, (model) {
        return state.copyWith(
            isLoading: false,
            isError: false,
            userdetails: model,
            message: state.message,
            status: true);
      });
      emit(_state);
    });
  }
}
