import 'package:delivery_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  const Category(
      {required this.categoryItem, required this.onSelectCategory, super.key});

  final CategoryModel categoryItem;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
      ),
      child: InkWell(
        onTap: onSelectCategory,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 0,
              right: 0,
              // width: 177.w,
              height: 140.w,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage(categoryItem.image),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryItem.title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: 7.w,
                    ),
                    Text(
                      '(${categoryItem.stock.toString()})',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
