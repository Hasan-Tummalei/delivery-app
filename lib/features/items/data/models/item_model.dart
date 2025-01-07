// import 'package:delivery_app/features/items/domain/entities/item.dart';
// import 'package:delivery_app/mappers/response_matter.dart';
// import 'package:json_annotation/json_annotation.dart';
// part 'item_model.g.dart';

// @JsonSerializable()
// class ItemModel {
//   const ItemModel({
//     required this.itemTitle,
//     required this.itemPrice,
//     required this.itemUnit,
//     required this.itemImage,
//     required this.itemCategory,
//     required this.description,
//     required this.weightPerPiece,
//     required this.country,
//   });

//   final String itemTitle;
//   final double itemPrice;
//   final String itemUnit;
//   final String itemImage;
//   final String itemCategory;
//   final String description;
//   final int weightPerPiece;
//   final String country;

//   // factory ItemModel.fromJson(Map<String, dynamic> json) {
//   //   return ItemModel(
//   //       itemTitle: json['itemTitle'],
//   //       itemPrice: json['itemPrice'],
//   //       itemUnit: json['itemUnit'],
//   //       itemImage: json['itemImage'],
//   //       itemCategory: json['itemCategory'],
//   //       description: json['description'],
//   //       weightPerPiece: json['weightPerPiece'],
//   //       country: json['country']);
//   // }

//   // Map<String, dynamic> toJson() {
//   //   return {
//   //     'itemTitle': itemTitle,
//   //     'itemPrice': itemPrice,
//   //     'itemUnit': itemUnit,
//   //     'itemImage': itemImage,
//   //     'itemCategory': itemCategory,
//   //     'description': description,
//   //     'weightPerPiece': weightPerPiece,
//   //     'country': country
//   //   };
//   // }

//   factory ItemModel.fromJson(Map<String, dynamic> json) =>
//       _$ItemModelFromJson(json);

//   Map<String, dynamic> toJson() => _$ItemModelToJson(this);

//   ItemEntity toEntity() {
//     return ItemEntity(
//       itemTitle: itemTitle,
//       itemPrice: itemPrice,
//       itemCategory: responseMapper[itemCategory] ??
//           responseMapper[
//               'vegetables']!, // check for another solution for enums issue.
//       itemImage: itemImage,
//       itemUnit: itemUnit,
//       description: description,
//       weightPerPiece: weightPerPiece,
//       country: country,
//     );
//   }
// }

import 'package:delivery_app/features/items/domain/entities/item.dart';
import 'package:delivery_app/mappers/response_matter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model.g.dart';
part 'item_model.freezed.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    required String itemTitle,
    required double itemPrice,
    required String itemUnit,
    required String itemImage,
    required String itemCategory,
    required String description,
    required int weightPerPiece,
    required String country,
  }) = _ItemModel;


  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  ItemEntity toEntity() {
    return ItemEntity(
      itemTitle: itemTitle,
      itemPrice: itemPrice,
      itemCategory: responseMapper[itemCategory] ??
          responseMapper[
              'vegetables']!, // check for another solution for enums issue.
      itemImage: itemImage,
      itemUnit: itemUnit,
      description: description,
      weightPerPiece: weightPerPiece,
      country: country,
    );
  }
}
