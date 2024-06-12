// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_lab_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviousLabDetail _$PreviousLabDetailFromJson(Map<String, dynamic> json) =>
    PreviousLabDetail(
      appointmentId: (json['appointment_id'] as num?)?.toInt(),
      labId: (json['lab_id'] as num?)?.toInt(),
      labtest: json['labtest'] as String?,
      clinicId: (json['clinic_id'] as num?)?.toInt(),
      clinicName: json['clinic_name'] as String?,
      doctorId: (json['doctor_id'] as num?)?.toInt(),
      doctorName: json['doctor_name'] as String?,
      patientId: (json['patient_id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      userImage: json['user_image'],
      labDocumentId: (json['lab_document_id'] as num?)?.toInt(),
      documentUpload: json['document_upload'] as String?,
      notes: json['notes'] as String?,
      age: json['age'] as String?,
    );

Map<String, dynamic> _$PreviousLabDetailToJson(PreviousLabDetail instance) =>
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
      'lab_document_id': instance.labDocumentId,
      'document_upload': instance.documentUpload,
      'notes': instance.notes,
      'age': instance.age,
    };
