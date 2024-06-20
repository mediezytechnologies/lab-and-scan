// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/home/contact_us/contact_us_repository.dart';
import '../../../domain/core/error/error_model.dart';
import '../../../domain/home/contact_us/model/contact_us_model.dart';
part 'contact_us_event.dart';
part 'contact_us_state.dart';
part 'contact_us_bloc.freezed.dart';

@injectable
class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  final ContactUsRepository contactUsRepository;
  ContactUsBloc(this.contactUsRepository) : super(ContactUsState.initial()) {
    on<_ContactUs>(
      (event, emit) async {
        emit(
          state.copyWith(
              isLoading: true, isError: false, message: '', status: false),
        );
        final _result = await contactUsRepository.contactUsRepo(
            email: event.email, message: event.message);

        final _state = _result.fold(
          (ErrorModel error) {
            return state.copyWith(
                isLoading: false,
                isError: true,
                message: error.message.toString(),
                status: false);
          },
          (ContactUsModel model) {
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
