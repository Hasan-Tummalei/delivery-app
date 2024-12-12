import 'package:delivery_app/models/category_model.dart';
import 'package:delivery_app/widgets/selected_category_screen/selected_category.dart';
import 'package:delivery_app/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectedCategoryScreen extends StatelessWidget {
  const SelectedCategoryScreen({super.key, required this.selectedCat});
  final CategoryModel selectedCat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/vectors/${selectedCat.title}Vector.svg',
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned(
                bottom: 85,
                left: 20,
                right: 10,
                child: Text(
                  selectedCat.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Positioned(
                bottom: 25,
                left: 20,
                right: 20,
                child: CustomizedSearchBar(),
              )
            ],
          ),
        ),
      ),
      body: SelectedCategory(
        selectedCategory: selectedCat.category,
      ),
    );
  }
}
