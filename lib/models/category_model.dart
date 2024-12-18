enum CategoryType { vegetables, fruits, bread, sweets, pasta, drinks }

class CategoryModel {
  const CategoryModel(
      {required this.title,
      required this.image,
      required this.category,
      required this.stock});
  final String title;
  final CategoryType category;
  final String image;
  final int stock;
}
