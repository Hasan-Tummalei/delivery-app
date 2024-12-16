import 'package:delivery_app/mappers/screen_title_mapper.dart';
import 'package:delivery_app/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({super.key, required this.selectedPageIndex});

  final int selectedPageIndex;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(200),
      child: AppBar(
        title: Text(
          titleMapper[selectedPageIndex]!,
        ),
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset('assets/vectors/VegetablesVector.svg'),
            ),
            const CustomizedSearchBar(),
          ],
        ),
      ),
    );
  }
}
