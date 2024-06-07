// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_labdetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletedLabdetail _$CompletedLabdetailFromJson(Map<String, dynamic> json) =>
    CompletedLabdetail(
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
      labDocumentId: json['lab_document_id'] as int?,
      documentUpload: json['document_upload'] as String?,
      notes: json['notes'] as String?,
      age: json['age'] as String?,
    );

Map<String, dynamic> _$CompletedLabdetailToJson(CompletedLabdetail instance) =>
    <String, dynamic>{
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
