import 'package:delivery_app/widgets/selected_category_screen/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiltersList extends StatelessWidget {
  const FiltersList({super.key, required this.filterList});

  final List<String> filterList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final filter in filterList)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Filter(filterValue: filter),
            ),
        ],
      ),
    );
  }
}
