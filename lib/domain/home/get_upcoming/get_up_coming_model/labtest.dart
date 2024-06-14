import 'package:json_annotation/json_annotation.dart';

part 'labtest.g.dart';

@JsonSerializable()
class Labtest {
	@JsonKey(name: 'labtest_id') 
	int? labtestId;
	@JsonKey(name: 'labtest_name') 
	String? labtestName;
	@JsonKey(name: 'is_completed') 
	int? isCompleted;

	Labtest({this.labtestId, this.labtestName, this.isCompleted});

	factory Labtest.fromJson(Map<String, dynamic> json) {
		return _$LabtestFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LabtestToJson(this);
}
