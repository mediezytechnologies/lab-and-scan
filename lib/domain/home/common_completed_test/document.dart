import 'package:json_annotation/json_annotation.dart';

import 'labtest.dart';

part 'document.g.dart';

@JsonSerializable()
class Document {
	List<Labtest>? labtests;
	@JsonKey(name: 'document_upload') 
	String? documentUpload;
	String? notes;

	Document({this.labtests, this.documentUpload, this.notes});

	factory Document.fromJson(Map<String, dynamic> json) {
		return _$DocumentFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
