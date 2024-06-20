part of 'contact_us_bloc.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    required bool isLoading,
    required bool isError,
    required String message,
    required bool status,
    ContactUsModel? model,
  }) = _Initial;

  factory ContactUsState.initial() => const ContactUsState(
      isError: false, isLoading: false, message: '', status: false);
}
