import 'package:json_annotation/json_annotation.dart';

import 'lab.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
	bool? status;
	String? message;
	@JsonKey(name: 'Lab') 
	Lab? lab;

	RegisterModel({this.status, this.message, this.lab});

	factory RegisterModel.fromJson(Map<String, dynamic> json) {
		return _$RegisterModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
