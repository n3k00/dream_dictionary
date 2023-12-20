import 'package:dream_dictionary/models/vo/detail_vo.dart';
import 'package:dream_dictionary/models/vo/header_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_data.g.dart';

@JsonSerializable()
class ResponseData {
  @JsonKey(name: "BlogHeader")
  List<HeaderVO> headerList;

  @JsonKey(name: "BlogDetail")
  List<DetailVO> detailList;

  ResponseData({required this.headerList, required this.detailList});

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
