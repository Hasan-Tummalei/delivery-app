import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:delivery_app/router/app_router.dart';
import 'package:delivery_app/features/categories/presentation/widgets/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  void selectCategory(BuildContext context, CategoryEntity category) {
    AutoRouter.of(context).push(SelectedCategoryRoute(selectedCat: category));
  }

  @override
  Widget build(BuildContext context) {
    context.read<CategoriesCubit>().fetchCategories();
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CategoriesError) {
          return Center(child: Text(state.errorMessage));
        } else if (state is CategoriesLoaded) {
          final categories = state.categories;
          return Padding(
            padding: EdgeInsets.all(12.w),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.w,
                mainAxisExtent: 211.w,
              ),
              itemCount: categories.length,
              itemBuilder: (ctx, index) {
                final category = categories[index];
                return Category(
                  categoryItem: category,
                  onSelectCategory: () => selectCategory(context, category),
                );
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
