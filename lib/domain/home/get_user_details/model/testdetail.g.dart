// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testdetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Testdetail _$TestdetailFromJson(Map<String, dynamic> json) => Testdetail(
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      labImage: json['lab_image'] as String?,
      type: json['Type'] as int?,
    );

Map<String, dynamic> _$TestdetailToJson(Testdetail instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'location': instance.location,
      'address': instance.address,
      'lab_image': instance.labImage,
      'Type': instance.type,
    };
