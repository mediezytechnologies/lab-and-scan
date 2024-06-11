// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      lab: json['Lab'] == null
          ? null
          : Lab.fromJson(json['Lab'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Lab': instance.lab,
    };
