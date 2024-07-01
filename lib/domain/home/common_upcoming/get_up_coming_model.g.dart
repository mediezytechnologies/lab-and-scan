// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_up_coming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUpComingModel _$GetUpComingModelFromJson(Map<String, dynamic> json) =>
    GetUpComingModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      upComingDetails: (json['upComingDetails'] as List<dynamic>?)
          ?.map((e) => UpComingDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetUpComingModelToJson(GetUpComingModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'upComingDetails': instance.upComingDetails,
    };
