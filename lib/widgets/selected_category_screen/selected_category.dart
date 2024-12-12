import 'package:delivery_app/data/dummy_filters_data.dart';
import 'package:delivery_app/data/dummy_items_data.dart';
import 'package:delivery_app/models/category_model.dart';
import 'package:delivery_app/widgets/selected_category_screen/category_items_list.dart';
import 'package:delivery_app/widgets/selected_category_screen/filters_list.dart';
import 'package:flutter/material.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({required this.selectedCategory, super.key});
  final CategoryType selectedCategory;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: FiltersList(filterList: dummyFilters)),
        CategoryItemsList(
          itemList: dummyItems,
          selectedCategory: selectedCategory,
        ),
      ],
    );
  }
}
