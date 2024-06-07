import 'package:json_annotation/json_annotation.dart';

import 'up_coming_labdetail.dart';

part 'get_up_coming.g.dart';

@JsonSerializable()
class GetUpComing {
	bool? status;
	String? message;
	@JsonKey(name: 'UpComingLabdetails') 
	List<UpComingLabdetail>? upComingLabdetails;

	GetUpComing({this.status, this.message, this.upComingLabdetails});

	factory GetUpComing.fromJson(Map<String, dynamic> json) {
		return _$GetUpComingFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetUpComingToJson(this);
}
