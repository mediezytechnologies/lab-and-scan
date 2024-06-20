// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      labtests: (json['labtests'] as List<dynamic>?)
          ?.map((e) => Labtest.fromJson(e as Map<String, dynamic>))
          .toList(),
      documentUpload: json['document_upload'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'labtests': instance.labtests,
      'document_upload': instance.documentUpload,
      'notes': instance.notes,
    };
