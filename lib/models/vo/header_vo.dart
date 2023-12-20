import 'package:json_annotation/json_annotation.dart';

part 'header_vo.g.dart';

@JsonSerializable()
class HeaderVO {
  @JsonKey(name: "BlogId")
  int id;

  @JsonKey(name: "BlogTitle")
  String title;

  HeaderVO({required this.id, required this.title});

  factory HeaderVO.fromJson(Map<String, dynamic> json) =>
      _$HeaderVOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$HeaderVOToJson(this);
}
