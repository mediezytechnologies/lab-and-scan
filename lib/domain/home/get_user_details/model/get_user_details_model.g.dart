// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserDetailsModel _$GetUserDetailsModelFromJson(Map<String, dynamic> json) =>
    GetUserDetailsModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      testdetails: (json['Testdetails'] as List<dynamic>?)
          ?.map((e) => Testdetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetUserDetailsModelToJson(
        GetUserDetailsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Testdetails': instance.testdetails,
    };
