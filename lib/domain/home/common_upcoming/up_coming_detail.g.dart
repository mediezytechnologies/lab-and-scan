// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'up_coming_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpComingDetail _$UpComingDetailFromJson(Map<String, dynamic> json) =>
    UpComingDetail(
      appointmentId: (json['appointment_id'] as num?)?.toInt(),
      labId: (json['lab_id'] as num?)?.toInt(),
      clinicId: (json['clinic_id'] as num?)?.toInt(),
      clinicName: json['clinic_name'] as String?,
      doctorId: (json['doctor_id'] as num?)?.toInt(),
      docterImage: json['docter_image'] as String?,
      doctorName: json['doctor_name'] as String?,
      patientId: (json['patient_id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      userImage: json['user_image'] as String?,
      age: json['age'] as String?,
      labtests: (json['labtests'] as List<dynamic>?)
          ?.map((e) => Labtest.fromJson(e as Map<String, dynamic>))
          .toList(),
      scantests: (json['scantests'] as List<dynamic>?)
          ?.map((e) => Scantest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpComingDetailToJson(UpComingDetail instance) =>
    <String, dynamic>{
      'appointment_id': instance.appointmentId,
      'lab_id': instance.labId,
      'clinic_id': instance.clinicId,
      'clinic_name': instance.clinicName,
      'doctor_id': instance.doctorId,
      'docter_image': instance.docterImage,
      'doctor_name': instance.doctorName,
      'patient_id': instance.patientId,
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'user_image': instance.userImage,
      'age': instance.age,
      'labtests': instance.labtests,
      'scantests': instance.scantests,
    };
