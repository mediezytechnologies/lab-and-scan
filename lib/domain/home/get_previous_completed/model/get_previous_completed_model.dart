import 'package:json_annotation/json_annotation.dart';
import 'previous_completed_lab_detail.dart';
part 'get_previous_completed_model.g.dart';

@JsonSerializable()
class GetPreviousCompletedModel {
	bool? status;
	String? message;
	List<PreviousCompletedLabDetail>? previousCompletedLabDetails;

	GetPreviousCompletedModel({
		this.status, 
		this.message, 
		this.previousCompletedLabDetails, 
	});

	factory GetPreviousCompletedModel.fromJson(Map<String, dynamic> json) {
		return _$GetPreviousCompletedModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetPreviousCompletedModelToJson(this);
}
