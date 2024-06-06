part of 'get_user_details_bloc.dart';

@freezed
class GetUserDetailsEvent with _$GetUserDetailsEvent {
  const factory GetUserDetailsEvent.fetchUserDetails() = _FetchUserDetails;
}