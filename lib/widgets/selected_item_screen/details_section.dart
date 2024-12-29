import 'package:delivery_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsSection extends StatefulWidget {
  final ItemModel item;

  const DetailsSection({super.key, required this.item});

  @override
  State<DetailsSection> createState() => _DetailsSectionState();
}

class _DetailsSectionState extends State<DetailsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.686,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.item.itemTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 30.sp),
            ),
            SizedBox(
              height: 20.w,
            ),
            Row(children: [
              Text(
                widget.item.itemPrice.toStringAsFixed(2),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 32.sp),
              ),
              Text(
                ' € / ${widget.item.itemUnit}',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24.sp,
                    letterSpacing: -0.8,
                    fontWeight: FontWeight.w400),
              )
            ]),
            SizedBox(
              height: 8.w,
            ),
            Text('~ ${widget.item.weightPerPiece}g / piece',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF06BE77),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 22.w,
            ),
            Text(
              widget.item.country,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 22.sp,
                    letterSpacing: -0.41,
                  ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  widget.item.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(letterSpacing: -0.41, height: 1.5.w),
                ),
              ),
            ),
            SizedBox(
              height: 30.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey.shade300, 
                      width: 0.8, 
                    ),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.22, 56.w),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/heart.svg',
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade600, BlendMode.srcIn)),
                ),
                SizedBox(width: 10.w),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF0BCE83),
                    side: BorderSide(
                      color: Colors.grey.shade300, 
                      width: 0.8, 
                    ),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.62, 56.w),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/shopping-cart.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn)),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Text(
                        'ADD TO CART',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
