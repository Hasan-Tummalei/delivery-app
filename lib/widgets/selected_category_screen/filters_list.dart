import 'package:delivery_app/widgets/selected_category_screen/filter.dart';
import 'package:flutter/material.dart';

class FiltersList extends StatelessWidget {
  const FiltersList({super.key, required this.filterList});

  final List<String> filterList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final filter in filterList)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Filter(filterValue: filter),
            ),
        ],
      ),
    );
  }
}
