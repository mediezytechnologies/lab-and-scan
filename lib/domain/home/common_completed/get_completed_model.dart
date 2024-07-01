import 'package:json_annotation/json_annotation.dart';

import 'completed_lab_detail.dart';

part 'get_completed_model.g.dart';

@JsonSerializable()
class GetCompletedModel {
	bool? status;
	String? message;
	List<CompletedLabDetail>? completedLabDetails;

	GetCompletedModel({this.status, this.message, this.completedLabDetails});

	factory GetCompletedModel.fromJson(Map<String, dynamic> json) {
		return _$GetCompletedModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetCompletedModelToJson(this);
}
