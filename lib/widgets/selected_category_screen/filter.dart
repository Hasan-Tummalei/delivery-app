import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Filter extends StatefulWidget {
  const Filter({super.key, required this.filterValue});

  final String filterValue;
  @override
  State<StatefulWidget> createState() {
    return FilterState();
  }
}

class FilterState extends State<Filter> {
  bool isClicked = false;

  void _setIsClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: isClicked ? const Color(0xFFE2CBFF) : Colors.white,
        foregroundColor:
            isClicked ? const Color(0xFF6C0EE4) : const Color(0xFF9586A8),
      ),
      onPressed: _setIsClicked,
      child: isClicked
          ? Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/check.svg',
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF6C0EE4), BlendMode.srcIn),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(widget.filterValue)
              ],
            )
          : Row(
              children: [
                Text(widget.filterValue),
              ],
            ),
    );
  }
}
