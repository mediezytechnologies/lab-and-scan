// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lab _$LabFromJson(Map<String, dynamic> json) => Lab(
      id: (json['id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'],
      email: json['email'] as String?,
      userRole: json['user_role'] as String?,
    );

Map<String, dynamic> _$LabToJson(Lab instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'email': instance.email,
      'user_role': instance.userRole,
    };
