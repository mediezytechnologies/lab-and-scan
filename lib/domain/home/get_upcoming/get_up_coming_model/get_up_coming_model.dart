import 'package:json_annotation/json_annotation.dart';

import 'up_coming_lab_detail.dart';

part 'get_up_coming_model.g.dart';

@JsonSerializable()
class GetUpComingModel {
	bool? status;
	String? message;
	List<UpComingLabDetail>? upComingLabDetails;

	GetUpComingModel({this.status, this.message, this.upComingLabDetails});

	factory GetUpComingModel.fromJson(Map<String, dynamic> json) {
		return _$GetUpComingModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetUpComingModelToJson(this);
}
