import 'package:json_annotation/json_annotation.dart';

part 'testdetail.g.dart';

@JsonSerializable()
class Testdetail {
	String? firstname;
	String? mobileNo;
	String? location;
	String? address;
	@JsonKey(name: 'lab_image') 
	String? labImage;
	@JsonKey(name: 'Type') 
	int? type;

	Testdetail({
		this.firstname, 
		this.mobileNo, 
		this.location, 
		this.address, 
		this.labImage, 
		this.type, 
	});

	factory Testdetail.fromJson(Map<String, dynamic> json) {
		return _$TestdetailFromJson(json);
	}

	Map<String, dynamic> toJson() => _$TestdetailToJson(this);
}
