import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:delivery_app/router/app_router.dart';
import 'package:delivery_app/features/categories/presentation/widgets/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
          return Skeletonizer(
            enabled: true,
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.w,
                  mainAxisExtent: 211.w,
                ),
                itemCount: 6,
                itemBuilder: (ctx, index) {
                  return Card(
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.r),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            height: 140.w,
                            child: Bone.circle(
                              size: 140.w,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Bone.text(words: 3),
                                  SizedBox(
                                    height: 7.w,
                                  ),
                                  const Bone.text(words: 1),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
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
