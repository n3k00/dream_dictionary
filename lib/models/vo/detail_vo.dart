import 'package:json_annotation/json_annotation.dart';

part 'detail_vo.g.dart';

@JsonSerializable()
class DetailVO {
  @JsonKey(name: "BlogDetailId")
  int id;

  @JsonKey(name: "BlogId")
  int headerId;

  @JsonKey(name: "BlogContent")
  String content;

  DetailVO({
    required this.id,
    required this.headerId,
    required this.content,
  });
  factory DetailVO.fromJson(Map<String, dynamic> json) =>
      _$DetailVOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DetailVOToJson(this);
}
