import 'package:json_annotation/json_annotation.dart';

part 'lab_document_details.g.dart';

@JsonSerializable()
class LabDocumentDetails {
	@JsonKey(name: 'document_upload') 
	String? documentUpload;
	String? notes;

	LabDocumentDetails({this.documentUpload, this.notes});

	factory LabDocumentDetails.fromJson(Map<String, dynamic> json) {
		return _$LabDocumentDetailsFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LabDocumentDetailsToJson(this);
}
