import 'package:delivery_app/models/item_model.dart';
import 'package:delivery_app/widgets/selected_item_screen/details_section.dart';
import 'package:flutter/material.dart';

class ImageSliderBottomSheet extends StatefulWidget {
  final List<String> images;
  final ItemModel item;

  const ImageSliderBottomSheet(
      {super.key, required this.images, required this.item});

  @override
  State<StatefulWidget> createState() {
    return _ImageSliderBottomSheetState();
  }
}

class _ImageSliderBottomSheetState extends State<ImageSliderBottomSheet> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Stack(
        children: [
          // Image Slider
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: widget.images.length,
                itemBuilder: (context, index) {
                  return ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                    child: Image.asset(
                      widget.images[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
          ),

          Positioned(
            top: 240,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.images.length, (index) {
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      Icons.circle,
                      size: _currentPage == index ? 14 : 10,
                      color: _currentPage == index
                          ? Colors.white
                          : Colors.grey.shade500,
                    ),
                  ),
                );
              }),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: DetailsSection(item: widget.item),
          ),
        ],
      ),
    );
  }
}
