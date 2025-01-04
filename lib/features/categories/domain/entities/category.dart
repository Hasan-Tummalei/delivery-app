import 'package:delivery_app/features/categories/data/models/category_model_modified.dart';
import 'package:equatable/equatable.dart';

// enum CategoryType { vegetables, fruits, bread, sweets, pasta, drinks }

class CategoryEntity extends Equatable {
  final String title;
  final CategoryType category;
  final String image;
  final int stock;
  const CategoryEntity(
      {required this.title,
      required this.image,
      required this.category,
      required this.stock});

  @override
  List<Object?> get props => [title, image, category, stock];
}
