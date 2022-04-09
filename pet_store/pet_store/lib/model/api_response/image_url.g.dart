// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageUrl _$ImageUrlFromJson(Map<String, dynamic> json) => ImageUrl(
      type: json['type'] as String?,
      minLength: json['minLength'] as int?,
      maxLength: json['maxLength'] as int?,
    );

Map<String, dynamic> _$ImageUrlToJson(ImageUrl instance) => <String, dynamic>{
      'type': instance.type,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
    };
