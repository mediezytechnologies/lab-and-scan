// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lab _$LabFromJson(Map<String, dynamic> json) => Lab(
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      userId: (json['UserId'] as num?)?.toInt(),
      address: json['address'] as String?,
      type: json['Type'] as String?,
      labImage: json['lab_image'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LabToJson(Lab instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'location': instance.location,
      'email': instance.email,
      'UserId': instance.userId,
      'address': instance.address,
      'Type': instance.type,
      'lab_image': instance.labImage,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };
