// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_lab_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletedLabDetail _$CompletedLabDetailFromJson(Map<String, dynamic> json) =>
    CompletedLabDetail(
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
      dateofbirth: json['dateofbirth'] as String?,
      age: json['age'] as String?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompletedLabDetailToJson(CompletedLabDetail instance) =>
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
      'dateofbirth': instance.dateofbirth,
      'age': instance.age,
      'documents': instance.documents,
    };
