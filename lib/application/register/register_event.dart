part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({
    required String labName,
    required String email,
    required String password,
    required String mobileNumber,
    required String address,
    required String location,
    required int type,
 String? imagePath,
    
  }) = _Register;

  const factory RegisterEvent.changeType(int selectType) = _ChangeType;
  const factory RegisterEvent.obscureChanged(bool isObsure) = _ObscureChanged;
 const factory RegisterEvent.selectImage(String? image) = _SelectImage;
}
