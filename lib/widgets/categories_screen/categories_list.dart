import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/mappers/response_matter.dart';
import 'package:delivery_app/models/category_model.dart';
import 'package:delivery_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/widgets/categories_screen/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key, required this.categoryList});

  final List<CategoryModel> categoryList;

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  void selectCategory(BuildContext context, CategoryModel category) {
    AutoRouter.of(context).push(SelectedCategoryRoute(selectedCat: category));
  }

  List<CategoryModel> _fetchedCategories = [];

  void fetchCategories() async {
    final url = Uri.http('10.0.2.2:3000', 'categories');

    final resposne = await http.get(url);
    final List<dynamic> decodedResponse = json.decode(resposne.body);
    for (final category in decodedResponse) {
      _fetchedCategories.add(
        CategoryModel(
          title: category['title'],
          image: category['image'],
          category: responseMapper[category['category']]!,
          stock: category['stock'],
        ),
      );
    }
    setState(() {
      _fetchedCategories = _fetchedCategories;
    });
  }

  @override
  void initState() {
    fetchCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.w,
          mainAxisExtent: 211.w,
        ),
        children: [
          for (final category in _fetchedCategories)
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
