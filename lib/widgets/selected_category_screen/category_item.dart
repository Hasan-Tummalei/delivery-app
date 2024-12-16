import 'package:delivery_app/models/item_model.dart';
import 'package:delivery_app/widgets/selected_item_screen/image_slider_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.item});

  final ItemModel item;

  void openDetailsSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => ImageSliderBottomSheet(
              item: item,
              images: const [
                'assets/images/BostonLettuc.jpeg',
                'assets/images/Brocolli.jpg',
                'assets/images/SavoyCabbage.jpeg',
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
              child: FadeInImage(
                placeholder: MemoryImage(
                  kTransparentImage,
                ),
                image: AssetImage(item.itemImage),
                width: 177,
                height: 128,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              openDetailsSheet(context);
            },
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.itemTitle,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      item.itemPrice.toStringAsFixed(2),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 22),
                    ),
                    Text(
                      ' € /${item.itemUnit}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.grey.shade300,
                          width: 0.8,
                        ),
                        fixedSize: const Size(70, 40),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        'assets/icons/heart.svg',
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade600, BlendMode.srcIn),
                      ),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF0BCE83),
                        side: BorderSide(
                          color: Colors.grey.shade300,
                          width: 0.8,
                        ),
                        fixedSize: const Size(70, 40),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        'assets/icons/shopping-cart.svg',
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
