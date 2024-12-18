import 'package:delivery_app/models/item_model.dart';
import 'package:delivery_app/widgets/selected_item_screen/image_slider_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 20.w),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: InkWell(
              child: Container(
                margin: EdgeInsets.only(right: 10.w),
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
                child: FadeInImage(
                  placeholder: MemoryImage(
                    kTransparentImage,
                  ),
                  image: AssetImage(item.itemImage),
                  width: 177.w,
                  height: 128.w,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                openDetailsSheet(context);
              },
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        item.itemTitle,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      item.itemPrice.toStringAsFixed(2),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 22.sp),
                    ),
                    Text(
                      ' € /${item.itemUnit}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.grey.shade300,
                          width: 0.8.w,
                        ),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        'assets/icons/heart.svg',
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade600, BlendMode.srcIn),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF0BCE83),
                        side: BorderSide(
                          color: Colors.grey.shade300,
                          width: 0.8.w,
                        ),
                        // fixedSize: Size(78.w, 40.w),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
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
