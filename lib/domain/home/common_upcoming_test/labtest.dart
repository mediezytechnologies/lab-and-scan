import 'package:json_annotation/json_annotation.dart';

part 'labtest.g.dart';

@JsonSerializable()
class Labtest {
  @JsonKey(name: 'labtest_id')
  int? labtestId;
  @JsonKey(name: 'labtest_name')
  String? labtestName;

  Labtest({this.labtestId, this.labtestName});

  factory Labtest.fromJson(Map<String, dynamic> json) {
    return _$LabtestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LabtestToJson(this);
}
