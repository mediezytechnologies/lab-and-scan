import 'package:json_annotation/json_annotation.dart';

import 'lab_document_details.dart';

part 'upload_document_model.g.dart';

@JsonSerializable()
class UploadDocumentModel {
	bool? status;
	String? message;
	@JsonKey(name: 'labDocument Details') 
	LabDocumentDetails? labDocumentDetails;

	UploadDocumentModel({this.status, this.message, this.labDocumentDetails});

	factory UploadDocumentModel.fromJson(Map<String, dynamic> json) {
		return _$UploadDocumentModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$UploadDocumentModelToJson(this);
}
