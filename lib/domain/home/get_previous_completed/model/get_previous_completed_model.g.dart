// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_previous_completed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPreviousCompletedModel _$GetPreviousCompletedModelFromJson(
        Map<String, dynamic> json) =>
    GetPreviousCompletedModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      previousCompletedLabDetails: (json['previousCompletedLabDetails']
              as List<dynamic>?)
          ?.map((e) =>
              PreviousCompletedLabDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPreviousCompletedModelToJson(
        GetPreviousCompletedModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'previousCompletedLabDetails': instance.previousCompletedLabDetails,
    };
