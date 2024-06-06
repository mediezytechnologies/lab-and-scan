import 'package:json_annotation/json_annotation.dart';

import 'lab.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
	bool? status;
	String? message;
	Lab? lab;
	String? token;
	String? role;

	LoginModel({this.status, this.message, this.lab, this.token, this.role});

	factory LoginModel.fromJson(Map<String, dynamic> json) {
		return _$LoginModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
