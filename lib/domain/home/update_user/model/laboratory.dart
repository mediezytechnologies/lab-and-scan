import 'package:json_annotation/json_annotation.dart';

part 'laboratory.g.dart';

@JsonSerializable()
class Laboratory {
	int? id;
	String? firstname;
	@JsonKey(name: 'lab_image') 
	String? labImage;
	String? mobileNo;
	String? location;
	String? email;
	String? address;
	@JsonKey(name: 'UserId') 
	int? userId;
	@JsonKey(name: 'Type') 
	int? type;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;

	Laboratory({
		this.id, 
		this.firstname, 
		this.labImage, 
		this.mobileNo, 
		this.location, 
		this.email, 
		this.address, 
		this.userId, 
		this.type, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Laboratory.fromJson(Map<String, dynamic> json) {
		return _$LaboratoryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LaboratoryToJson(this);
}
