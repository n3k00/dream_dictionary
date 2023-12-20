// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeaderVO _$HeaderVOFromJson(Map<String, dynamic> json) => HeaderVO(
      id: json['BlogId'] as int,
      title: json['BlogTitle'] as String,
    );

Map<String, dynamic> _$HeaderVOToJson(HeaderVO instance) => <String, dynamic>{
      'BlogId': instance.id,
      'BlogTitle': instance.title,
    };
