// import 'package:delivery_app/features/categories/domain/entities/category.dart';
// import 'package:delivery_app/mappers/response_matter.dart';
// import 'package:flutter/foundation.dart';

// // import 'package:json_annotation/json_annotation.dart';
// // part 'category_model_modified.g.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'category_model_modified.freezed.dart';
// part 'category_model_modified.g.dart'; // For JSON serialization

// enum CategoryType { vegetables, fruits, bread, sweets, pasta, drinks }

// // @JsonSerializable()
// // class CategoryModel {
// //   const CategoryModel(
// //       {required this.title,
// //       required this.image,
// //       required this.category,
// //       required this.stock});

// //   final String title;
// //   final String image;
// //   final String category;
// //   final int stock;

// // // ---- For Serializable ----

// //   // factory CategoryModel.fromJson(Map<String, dynamic> json) {
// //   //   return CategoryModel(
// //   //       title: json['title'],
// //   //       image: json['image'],
// //   //       category: json['category'],
// //   //       stock: json['stock']);
// //   // }

// //   // Map<String, dynamic> toJson() {
// //   //   return {
// //   //     'title': title,
// //   //     'image': image,
// //   //     'category': category,
// //   //     'stock': stock
// //   //   };
// //   // }

// //   factory CategoryModel.fromJson(Map<String, dynamic> json) =>
// //       _$CategoryModelFromJson(json);

// //   Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

// //   CategoryEntity toEntity() {
// //     return CategoryEntity(
// //         title: title,
// //         image: image,
// //         category: responseMapper[category] ??
// //             responseMapper[
// //                 'vegetables']!, // check for another solution for enums issue.
// //         stock: stock);
// //   }
// // }

// @freezed
// class CategoryModel with _$CategoryModel {
//   const factory CategoryModel(
//       {required String title,
//       required String image,
//       required String category,
//       required int stock}) = _CategoryModel;

//   factory CategoryModel.fromJson(Map<String, dynamic> json) =>
//       _$CategoryModelFromJson(json);

//   // Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

//   CategoryEntity toEntity() {
//     return CategoryEntity(
//         title: title,
//         image: image,
//         category: responseMapper[category] ??
//             responseMapper[
//                 'vegetables']!, // check for another solution for enums issue.
//         stock: stock);
//   }
// }
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/mappers/response_matter.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model_modified.freezed.dart';
part 'category_model_modified.g.dart'; // For JSON serialization

enum CategoryType { vegetables, fruits, bread, sweets, pasta, drinks }

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String title,
    required String image,
    required String category,
    required int stock,
  }) = _CategoryModel;

  // Factory method for JSON deserialization
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  // Custom method to convert CategoryModel to CategoryEntity
  CategoryEntity toEntity() {
    return CategoryEntity(
      title: title,
      image: image,
      category: responseMapper[category] ?? responseMapper['vegetables']!,
      stock: stock,
    );
  }
}
