import 'package:json_annotation/json_annotation.dart';

import 'previous_un_completed_lab_detail.dart';

part 'in_completed_previous_model.g.dart';

@JsonSerializable()
class InCompletedPreviousModel {
	bool? status;
	String? message;
	List<PreviousUnCompletedLabDetail>? previousUnCompletedLabDetails;

	InCompletedPreviousModel({
		this.status, 
		this.message, 
		this.previousUnCompletedLabDetails, 
	});

	factory InCompletedPreviousModel.fromJson(Map<String, dynamic> json) {
		return _$InCompletedPreviousModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$InCompletedPreviousModelToJson(this);
}
