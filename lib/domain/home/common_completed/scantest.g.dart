// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scantest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scantest _$ScantestFromJson(Map<String, dynamic> json) => Scantest(
      scantestId: (json['scantest_id'] as num?)?.toInt(),
      scantestName: json['scantest_name'] as String?,
    );

Map<String, dynamic> _$ScantestToJson(Scantest instance) => <String, dynamic>{
      'scantest_id': instance.scantestId,
      'scantest_name': instance.scantestName,
    };
