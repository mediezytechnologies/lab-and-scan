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
      previousLabDetails: (json['PreviousLabDetails'] as List<dynamic>?)
          ?.map((e) => PreviousLabDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPreviousCompletedModelToJson(
        GetPreviousCompletedModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'PreviousLabDetails': instance.previousLabDetails,
    };
