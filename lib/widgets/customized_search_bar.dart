import 'package:delivery_app/widgets/buttons_customization/outliens_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomizedSearchBar extends StatefulWidget {
  const CustomizedSearchBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchBarState();
  }
}

class SearchBarState extends State<CustomizedSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 17.sp, fontWeight: FontWeight.w400),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.0.w),
                child: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 18.w,
                  height: 18.w,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.0.w,
                horizontal: 20.0.w,
              ),
              border: borderBtn,
              enabledBorder: enabledBtn,
              focusedBorder: focusedBtn,
            ),
          ),
        ),
      ],
    );
  }
}
