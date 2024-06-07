import 'package:json_annotation/json_annotation.dart';

import 'completed_labdetail.dart';

part 'get_completed_model.g.dart';

@JsonSerializable()
class GetCompletedModel {
	bool? status;
	String? message;
	@JsonKey(name: 'CompletedLabdetails') 
	List<CompletedLabdetail>? completedLabdetails;

	GetCompletedModel({this.status, this.message, this.completedLabdetails});

	factory GetCompletedModel.fromJson(Map<String, dynamic> json) {
		return _$GetCompletedModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetCompletedModelToJson(this);
}
