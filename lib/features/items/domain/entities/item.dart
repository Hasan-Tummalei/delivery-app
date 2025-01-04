import 'package:delivery_app/features/categories/data/models/category_model_modified.dart';
import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable {
  @override
  List<Object?> get props => [
        itemTitle,
        itemPrice,
        itemUnit,
        itemImage,
        itemCategory,
        description,
        weightPerPiece,
        country
      ];
  const ItemEntity({
    required this.itemTitle,
    required this.itemPrice,
    required this.itemUnit,
    required this.itemImage,
    required this.itemCategory,
    required this.description,
    required this.weightPerPiece,
    required this.country,
  });

  final String itemTitle;
  final double itemPrice;
  final String itemUnit;
  final String itemImage;
  final CategoryType itemCategory;
  final String description;
  final int weightPerPiece;
  final String country;
}
