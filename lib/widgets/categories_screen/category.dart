import 'package:delivery_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Category extends StatelessWidget {
  const Category(
      {required this.categoryItem, required this.onSelectCategory, super.key});

  final CategoryModel categoryItem;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: InkWell(
        onTap: onSelectCategory,
        child: Stack(
          children: [
            Positioned(
              height: 140,
              top: 0,
              right: 0,
              left: 0,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage(categoryItem.image),
                fit: BoxFit.cover,
                height: 140,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryItem.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        '(${categoryItem.stock.toString()})',
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
