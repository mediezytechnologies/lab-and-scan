// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_completed_previous_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InCompletedPreviousModel _$InCompletedPreviousModelFromJson(
        Map<String, dynamic> json) =>
    InCompletedPreviousModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      previousUnCompletedLabDetails: (json['previousUnCompletedLabDetails']
              as List<dynamic>?)
          ?.map((e) =>
              PreviousUnCompletedLabDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InCompletedPreviousModelToJson(
        InCompletedPreviousModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'previousUnCompletedLabDetails': instance.previousUnCompletedLabDetails,
    };
