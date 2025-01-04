import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/mappers/response_matter.dart';

enum CategoryType { vegetables, fruits, bread, sweets, pasta, drinks }

class CategoryModel {
   const CategoryModel(
      {required this.title,
      required this.image,
      required this.category,
      required this.stock});

  final String title;
  final String image;
  final String category;
  final int stock;

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        title: json['title'],
        image: json['image'],
        category: json['category'],
        stock: json['stock']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'category': category,
      'stock': stock
    };
  }

  CategoryEntity toEntity() {
    return CategoryEntity(
        title: title,
        image: image,
        category: responseMapper[category] ?? responseMapper['vegetables']!, // check for another solution for enums issue.
        stock: stock);
  }
}
