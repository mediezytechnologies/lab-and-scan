import 'package:json_annotation/json_annotation.dart';

import 'laboratory.dart';

part 'update_user_model.g.dart';

@JsonSerializable()
class UpdateUserModel {
	bool? status;
	String? message;
	Laboratory? laboratory;

	UpdateUserModel({this.status, this.message, this.laboratory});

	factory UpdateUserModel.fromJson(Map<String, dynamic> json) {
		return _$UpdateUserModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$UpdateUserModelToJson(this);
}
