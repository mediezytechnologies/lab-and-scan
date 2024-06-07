// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_up_coming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUpComing _$GetUpComingFromJson(Map<String, dynamic> json) => GetUpComing(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      upComingLabdetails: (json['UpComingLabdetails'] as List<dynamic>?)
          ?.map((e) => UpComingLabdetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetUpComingToJson(GetUpComing instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'UpComingLabdetails': instance.upComingLabdetails,
    };
