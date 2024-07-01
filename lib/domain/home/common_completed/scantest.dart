import 'package:json_annotation/json_annotation.dart';

part 'scantest.g.dart';

@JsonSerializable()
class Scantest {
	@JsonKey(name: 'scantest_id') 
	int? scantestId;
	@JsonKey(name: 'scantest_name') 
	String? scantestName;

	Scantest({this.scantestId, this.scantestName});

	factory Scantest.fromJson(Map<String, dynamic> json) {
		return _$ScantestFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ScantestToJson(this);
}
