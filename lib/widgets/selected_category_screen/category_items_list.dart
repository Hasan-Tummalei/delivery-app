import 'package:delivery_app/models/item_model.dart';
import 'package:delivery_app/widgets/selected_category_screen/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemsList extends StatelessWidget {
  CategoryItemsList({super.key, required itemList, required selectedCategory})
      : itemList = itemList
            .where((item) => item.itemCategory == selectedCategory)
            .toList();

  final List<ItemModel> itemList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => CategoryItem(item: itemList[index]),
        childCount: itemList.length,
      ),
    );
  }
}
