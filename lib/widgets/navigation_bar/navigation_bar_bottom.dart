import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBarBottom extends StatelessWidget {
  const NavigationBarBottom(
      {super.key, required this.selectPage, required this.selectedPageIndex});

  final void Function(int index) selectPage;
  final int selectedPageIndex;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      onDestinationSelected: selectPage,
      destinations: <Widget>[
        NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/grid.svg',
              colorFilter: selectedPageIndex == 0
                  ? const ColorFilter.mode(Color(0xFFA259FF), BlendMode.srcIn)
                  : null,
            ),
            label: '',
            tooltip: 'Home'),
        NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/shopping-cart.svg',
              colorFilter: selectedPageIndex == 1
                  ? const ColorFilter.mode(Color(0xFFA259FF), BlendMode.srcIn)
                  : null,
            ),
            label: '',
            tooltip: 'Cart'),
        NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              colorFilter: selectedPageIndex == 2
                  ? const ColorFilter.mode(Color(0xFFA259FF), BlendMode.srcIn)
                  : null,
            ),
            label: '',
            tooltip: 'Profile')
      ],
      selectedIndex: selectedPageIndex,
    );
  }
}
