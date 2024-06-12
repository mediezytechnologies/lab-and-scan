// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incompleted_previous_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncompletedPreviousModel _$IncompletedPreviousModelFromJson(
        Map<String, dynamic> json) =>
    IncompletedPreviousModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      previousUnCompletedLabDetails: (json['PreviousUnCompletedLabDetails']
              as List<dynamic>?)
          ?.map((e) =>
              PreviousUnCompletedLabDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IncompletedPreviousModelToJson(
        IncompletedPreviousModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'PreviousUnCompletedLabDetails': instance.previousUnCompletedLabDetails,
    };
