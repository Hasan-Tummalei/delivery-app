import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/category_model.dart';
import 'package:delivery_app/widgets/selected_category_screen/selected_category.dart';
import 'package:delivery_app/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelectedCategoryScreen extends StatelessWidget {
  const SelectedCategoryScreen({super.key, required this.selectedCat});
  final CategoryModel selectedCat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140.w),
        child: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: const Color.fromARGB(255, 239, 239, 239),
          flexibleSpace: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/vectors/${selectedCat.title}Vector.svg',
                  height: 210.w,
                  width: 210.w,
                ),
              ),
              Positioned(
                bottom: 20.w,
                left: 20.w,
                right: 10.w,
                child: Text(
                  selectedCat.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0.w),
            child: const CustomizedSearchBar(),
          ),
          Expanded(
            child: SelectedCategory(
              selectedCategory: selectedCat.category,
            ),
          )
        ],
      ),
    );
  }
}
