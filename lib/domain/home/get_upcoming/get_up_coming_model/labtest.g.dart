// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labtest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Labtest _$LabtestFromJson(Map<String, dynamic> json) => Labtest(
      labtestId: (json['labtest_id'] as num?)?.toInt(),
      labtestName: json['labtest_name'] as String?,
      isCompleted: (json['is_completed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LabtestToJson(Labtest instance) => <String, dynamic>{
      'labtest_id': instance.labtestId,
      'labtest_name': instance.labtestName,
      'is_completed': instance.isCompleted,
    };
