// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailVO _$DetailVOFromJson(Map<String, dynamic> json) => DetailVO(
      id: json['BlogDetailId'] as int,
      headerId: json['BlogId'] as int,
      content: json['BlogContent'] as String,
    );

Map<String, dynamic> _$DetailVOToJson(DetailVO instance) => <String, dynamic>{
      'BlogDetailId': instance.id,
      'BlogId': instance.headerId,
      'BlogContent': instance.content,
    };
