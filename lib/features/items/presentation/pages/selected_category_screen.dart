import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/features/items/presentation/widgets/selected_category.dart';
import 'package:delivery_app/core/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:delivery_app/features/items/presentation/cubit/items_cubit.dart';

@RoutePage()
class SelectedCategoryScreen extends StatelessWidget {
  const SelectedCategoryScreen({super.key, required this.selectedCat});
  final CategoryEntity selectedCat;

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
              BlocBuilder<ItemsCubit, ItemsState>(
                builder: (context, state) {
                  return Positioned(
                    top: 0,
                    right: 0,
                    child: Skeletonizer(
                      enabled: state is ItemsLoading,
                      child: SvgPicture.asset(
                        'assets/vectors/${selectedCat.title}Vector.svg',
                        height: 210.w,
                        width: 210.w,
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<ItemsCubit, ItemsState>(
                builder: (context, state) {
                  return Positioned(
                    bottom: 20.w,
                    left: 20.w,
                    right: 10.w,
                    child: Skeletonizer(
                      enabled: state is ItemsLoading,
                      child: Text(
                        selectedCat.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  );
                },
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
          ),
        ],
      ),
    );
  }
}
