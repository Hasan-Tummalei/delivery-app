import 'dart:convert';

import 'package:delivery_app/data/dummy_filters_data.dart';
import 'package:delivery_app/mappers/response_matter.dart';
import 'package:delivery_app/models/category_model.dart';
import 'package:delivery_app/models/item_model.dart';
import 'package:delivery_app/widgets/selected_category_screen/category_items_list.dart';
import 'package:delivery_app/widgets/selected_category_screen/filters_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SelectedCategory extends StatefulWidget {
  const SelectedCategory({required this.selectedCategory, super.key});
  final CategoryType selectedCategory;

  @override
  State<SelectedCategory> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<SelectedCategory> {
  List<ItemModel> fetchedItems = [];

  void fetchCategories() async {
    final url = Uri.http('10.0.2.2:3000', 'items');
    final resposne = await http.get(url);
    final List<dynamic> decodedResponse = json.decode(resposne.body);

    for (final item in decodedResponse) {
      fetchedItems.add(
        ItemModel(
            itemTitle: item['itemTitle'],
            itemPrice: item['itemPrice'],
            itemUnit: item['itemUnit'],
            itemImage: item['itemImage'],
            itemCategory: responseMapper[item['itemCategory']]!,
            description: item['description'],
            weightPerPiece: item['weightPerPiece'],
            country: item['country']),
      );
    }
    setState(() {
      fetchedItems = fetchedItems;
    });
  }

  @override
  void initState() {
    fetchCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: FiltersList(filterList: dummyFilters)),
        CategoryItemsList(
          itemList: fetchedItems,
          selectedCategory: widget.selectedCategory,
        ),
      ],
    );
  }
}
