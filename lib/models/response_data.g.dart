// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      headerList: (json['BlogHeader'] as List<dynamic>)
          .map((e) => HeaderVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailList: (json['BlogDetail'] as List<dynamic>)
          .map((e) => DetailVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'BlogHeader': instance.headerList,
      'BlogDetail': instance.detailList,
    };
