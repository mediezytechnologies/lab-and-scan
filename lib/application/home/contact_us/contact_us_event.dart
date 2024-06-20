part of 'contact_us_bloc.dart';

@freezed
class ContactUsEvent with _$ContactUsEvent {
  const factory ContactUsEvent.contactUs({
    required String email,
    required String message,
  }) = _ContactUs;
}
