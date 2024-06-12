// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_document_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabDocumentDetails _$LabDocumentDetailsFromJson(Map<String, dynamic> json) =>
    LabDocumentDetails(
      documentUpload: json['document_upload'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$LabDocumentDetailsToJson(LabDocumentDetails instance) =>
    <String, dynamic>{
      'document_upload': instance.documentUpload,
      'notes': instance.notes,
    };
