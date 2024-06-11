// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadDocumentModel _$UploadDocumentModelFromJson(Map<String, dynamic> json) =>
    UploadDocumentModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      labDocumentDetails: json['labDocument Details'] == null
          ? null
          : LabDocumentDetails.fromJson(
              json['labDocument Details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UploadDocumentModelToJson(
        UploadDocumentModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'labDocument Details': instance.labDocumentDetails,
    };
