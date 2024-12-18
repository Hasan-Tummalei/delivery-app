import 'package:delivery_app/data/dummy_categories_data.dart';
import 'package:delivery_app/widgets/categories_screen/categories_list.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return CategoriesList(categoryList: dummyCategoryData);
  }
}
