// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model_modified.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      title: json['title'] as String,
      image: json['image'] as String,
      category: json['category'] as String,
      stock: (json['stock'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'category': instance.category,
      'stock': instance.stock,
    };
