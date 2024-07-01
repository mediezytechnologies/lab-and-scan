// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_completed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCompletedModel _$GetCompletedModelFromJson(Map<String, dynamic> json) =>
    GetCompletedModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      completedLabDetails: (json['completedLabDetails'] as List<dynamic>?)
          ?.map((e) => CompletedLabDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCompletedModelToJson(GetCompletedModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'completedLabDetails': instance.completedLabDetails,
    };
