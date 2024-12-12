// Updated ItemModel class
import 'package:delivery_app/models/category_model.dart';

class ItemModel {
  const ItemModel({
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
