import 'package:json_annotation/json_annotation.dart';

part 'lab.g.dart';

@JsonSerializable()
class Lab {
	String? firstname;
	String? mobileNo;
	String? location;
	String? email;
	@JsonKey(name: 'UserId') 
	int? userId;
	String? address;
	@JsonKey(name: 'Type') 
	String? type;
	@JsonKey(name: 'lab_image') 
	String? labImage;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	int? id;

	Lab({
		this.firstname, 
		this.mobileNo, 
		this.location, 
		this.email, 
		this.userId, 
		this.address, 
		this.type, 
		this.labImage, 
		this.updatedAt, 
		this.createdAt, 
		this.id, 
	});

	factory Lab.fromJson(Map<String, dynamic> json) => _$LabFromJson(json);

	Map<String, dynamic> toJson() => _$LabToJson(this);
}
