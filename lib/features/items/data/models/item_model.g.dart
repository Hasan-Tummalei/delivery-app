// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemModelImpl _$$ItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemModelImpl(
      itemTitle: json['itemTitle'] as String,
      itemPrice: (json['itemPrice'] as num).toDouble(),
      itemUnit: json['itemUnit'] as String,
      itemImage: json['itemImage'] as String,
      itemCategory: json['itemCategory'] as String,
      description: json['description'] as String,
      weightPerPiece: (json['weightPerPiece'] as num).toInt(),
      country: json['country'] as String,
    );

Map<String, dynamic> _$$ItemModelImplToJson(_$ItemModelImpl instance) =>
    <String, dynamic>{
      'itemTitle': instance.itemTitle,
      'itemPrice': instance.itemPrice,
      'itemUnit': instance.itemUnit,
      'itemImage': instance.itemImage,
      'itemCategory': instance.itemCategory,
      'description': instance.description,
      'weightPerPiece': instance.weightPerPiece,
      'country': instance.country,
    };
