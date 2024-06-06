import 'package:json_annotation/json_annotation.dart';

part 'lab.g.dart';

@JsonSerializable()
class Lab {
	int? id;
	String? firstname;
	dynamic mobileNo;
	String? email;
	@JsonKey(name: 'user_role') 
	String? userRole;

	Lab({this.id, this.firstname, this.mobileNo, this.email, this.userRole});

	factory Lab.fromJson(Map<String, dynamic> json) => _$LabFromJson(json);

	Map<String, dynamic> toJson() => _$LabToJson(this);
}
