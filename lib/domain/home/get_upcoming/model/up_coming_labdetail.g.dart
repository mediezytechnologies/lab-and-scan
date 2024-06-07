// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'up_coming_labdetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpComingLabdetail _$UpComingLabdetailFromJson(Map<String, dynamic> json) =>
    UpComingLabdetail(
      appointmentId: json['appointment_id'] as int?,
      labId: json['lab_id'] as int?,
      labtest: json['labtest'] as String?,
      clinicId: json['clinic_id'] as int?,
      clinicName: json['clinic_name'] as String?,
      doctorId: json['doctor_id'] as int?,
      doctorName: json['doctor_name'] as String?,
      patientId: json['patient_id'] as int?,
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      userImage: json['user_image'] as String?,
      age: json['age'] as String?,
    );

Map<String, dynamic> _$UpComingLabdetailToJson(UpComingLabdetail instance) =>
    <String, dynamic>{
      'appointment_id': instance.appointmentId,
      'lab_id': instance.labId,
      'labtest': instance.labtest,
      'clinic_id': instance.clinicId,
      'clinic_name': instance.clinicName,
      'doctor_id': instance.doctorId,
      'doctor_name': instance.doctorName,
      'patient_id': instance.patientId,
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'user_image': instance.userImage,
      'age': instance.age,
    };
