import 'package:delivery_app/features/items/domain/entities/item.dart';
import 'package:delivery_app/features/items/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemsList extends StatelessWidget {
  CategoryItemsList({super.key, required itemList, required selectedCategory})
      : itemList = itemList
            .where((item) => item.itemCategory == selectedCategory)
            .toList();

  final List<ItemEntity> itemList;

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
