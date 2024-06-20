import 'package:json_annotation/json_annotation.dart';

part 'contact_us_model.g.dart';

@JsonSerializable()
class ContactUsModel {
	bool? status;
	String? message;

	ContactUsModel({this.status, this.message});

	factory ContactUsModel.fromJson(Map<String, dynamic> json) {
		return _$ContactUsModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ContactUsModelToJson(this);
}
