import 'package:json_annotation/json_annotation.dart';

import 'previous_lab_detail.dart';

part 'get_previous_completed_model.g.dart';

@JsonSerializable()
class GetPreviousCompletedModel {
	bool? status;
	String? message;
	@JsonKey(name: 'PreviousLabDetails') 
	List<PreviousLabDetail>? previousLabDetails;

	GetPreviousCompletedModel({
		this.status, 
		this.message, 
		this.previousLabDetails, 
	});

	factory GetPreviousCompletedModel.fromJson(Map<String, dynamic> json) {
		return _$GetPreviousCompletedModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetPreviousCompletedModelToJson(this);
}
