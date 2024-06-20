// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_un_completed_lab_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviousUnCompletedLabDetail _$PreviousUnCompletedLabDetailFromJson(
        Map<String, dynamic> json) =>
    PreviousUnCompletedLabDetail(
      appointmentId: (json['appointment_id'] as num?)?.toInt(),
      labId: (json['lab_id'] as num?)?.toInt(),
      clinicId: (json['clinic_id'] as num?)?.toInt(),
      clinicName: json['clinic_name'] as String?,
      doctorId: (json['doctor_id'] as num?)?.toInt(),
      doctorName: json['doctor_name'] as String?,
      patientId: (json['patient_id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      userImage: json['user_image'] as String?,
      age: json['age'] as String?,
      labtests: (json['labtests'] as List<dynamic>?)
          ?.map((e) => Labtest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreviousUnCompletedLabDetailToJson(
        PreviousUnCompletedLabDetail instance) =>
    <String, dynamic>{
      'appointment_id': instance.appointmentId,
      'lab_id': instance.labId,
      'clinic_id': instance.clinicId,
      'clinic_name': instance.clinicName,
      'doctor_id': instance.doctorId,
      'doctor_name': instance.doctorName,
      'patient_id': instance.patientId,
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'user_image': instance.userImage,
      'age': instance.age,
      'labtests': instance.labtests,
    };
