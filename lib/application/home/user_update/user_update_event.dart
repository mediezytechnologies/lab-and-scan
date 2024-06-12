part of 'user_update_bloc.dart';

@freezed
class UserUpdateEvent with _$UserUpdateEvent {
  const factory UserUpdateEvent.update(
    String? name,
    String? phoneNumber,
    String? address,
    String? location,
    String? imagePath,
  ) = _Update;


  
  const factory UserUpdateEvent.userUpdateImageEvent(String? image) =
      _UserUpdateImageEvent;
}
