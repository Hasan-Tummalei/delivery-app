import 'package:delivery_app/models/category_model.dart';
import 'package:delivery_app/screens/selected_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/widgets/categories_screen/category.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categoryList});

  final List<CategoryModel> categoryList;

  void selectCategory(BuildContext context, CategoryModel category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => SelectedCategoryScreen(
              selectedCat: category,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
        children: [
          for (final category in categoryList)
            Category(
              categoryItem: category,
              onSelectCategory: () {
                selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}
