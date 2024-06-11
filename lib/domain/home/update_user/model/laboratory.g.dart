// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laboratory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Laboratory _$LaboratoryFromJson(Map<String, dynamic> json) => Laboratory(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      labImage: json['lab_image'] as String?,
      mobileNo: json['mobileNo'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      userId: json['UserId'] as int?,
      type: json['Type'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LaboratoryToJson(Laboratory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lab_image': instance.labImage,
      'mobileNo': instance.mobileNo,
      'location': instance.location,
      'email': instance.email,
      'address': instance.address,
      'UserId': instance.userId,
      'Type': instance.type,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
