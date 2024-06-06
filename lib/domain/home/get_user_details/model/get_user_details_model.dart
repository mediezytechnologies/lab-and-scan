import 'package:json_annotation/json_annotation.dart';

import 'testdetail.dart';

part 'get_user_details_model.g.dart';

@JsonSerializable()
class GetUserDetailsModel {
	bool? status;
	String? message;
	@JsonKey(name: 'Testdetails') 
	List<Testdetail>? testdetails;

	GetUserDetailsModel({this.status, this.message, this.testdetails});

	factory GetUserDetailsModel.fromJson(Map<String, dynamic> json) {
		return _$GetUserDetailsModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetUserDetailsModelToJson(this);
}
