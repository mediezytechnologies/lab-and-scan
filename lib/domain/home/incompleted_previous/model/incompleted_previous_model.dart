import 'package:json_annotation/json_annotation.dart';

import 'previous_un_completed_lab_detail.dart';

part 'incompleted_previous_model.g.dart';

@JsonSerializable()
class IncompletedPreviousModel {
	bool? status;
	String? message;
	@JsonKey(name: 'PreviousUnCompletedLabDetails') 
	List<PreviousUnCompletedLabDetail>? previousUnCompletedLabDetails;

	IncompletedPreviousModel({
		this.status, 
		this.message, 
		this.previousUnCompletedLabDetails, 
	});

	factory IncompletedPreviousModel.fromJson(Map<String, dynamic> json) {
		return _$IncompletedPreviousModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$IncompletedPreviousModelToJson(this);
}
