import 'package:delivery_app/features/categories/data/models/category_model_modified.dart';
import 'package:delivery_app/features/items/presentation/cubit/items_cubit.dart';
import 'package:delivery_app/features/items/presentation/widgets/category_items_list.dart';
import 'package:delivery_app/features/items/presentation/widgets/filters_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/dummy_filters_data.dart';
import 'category_item_skeleton.dart';

class SelectedCategory extends StatelessWidget {
  final CategoryType selectedCategory;

  const SelectedCategory({required this.selectedCategory, super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ItemsCubit>().fetchItems();

    return BlocBuilder<ItemsCubit, ItemsState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: FiltersList(filterList: dummyFilters),
            ),
            if (state is ItemsLoading) ...[
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => const CategoryItemSkeleton(),
                  childCount: 10,
                ),
              ),
            ] else if (state is ItemsError) ...[
              SliverToBoxAdapter(
                child: Center(child: Text(state.errorMessage)),
              ),
            ] else if (state is ItemsLoaded) ...[
              CategoryItemsList(
                itemList: state.items,
                selectedCategory: selectedCategory,
              ),
            ],
          ],
        );
      },
    );
  }
}
