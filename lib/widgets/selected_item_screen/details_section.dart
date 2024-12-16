import 'package:delivery_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.item.itemTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                widget.item.itemPrice.toStringAsFixed(2),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 32),
              ),
              Text(
                ' € / ${widget.item.itemUnit}',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24,
                    letterSpacing: -0.8,
                    fontWeight: FontWeight.w400),
              )
            ]),
            const SizedBox(
              height: 8,
            ),
            Text('~ ${widget.item.weightPerPiece}g / piece',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF06BE77),
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 22,
            ),
            Text(
              widget.item.country,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 22,
                    letterSpacing: -0.41,
                  ),
            ),
            Text(
              widget.item.description,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(letterSpacing: -0.41, height: 1.5),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey.shade300, // Lighter border color
                      width: 0.8, // Thinner border width
                    ),
                    fixedSize: const Size(78, 56),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/heart.svg',
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade600, BlendMode.srcIn)),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF0BCE83),
                    side: BorderSide(
                      color: Colors.grey.shade300, // Match border color
                      width: 0.8, // Thinner border width
                    ),
                    fixedSize: const Size(250, 56),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/shopping-cart.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn)),
                      const SizedBox(
                        width: 15,
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
