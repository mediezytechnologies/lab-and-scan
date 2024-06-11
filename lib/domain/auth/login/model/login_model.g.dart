// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      lab: json['lab'] == null
          ? null
          : Lab.fromJson(json['lab'] as Map<String, dynamic>),
      token: json['token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'lab': instance.lab,
      'token': instance.token,
      'role': instance.role,
    };
