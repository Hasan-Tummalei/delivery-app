import 'package:delivery_app/mappers/screen_title_mapper.dart';
import 'package:delivery_app/mappers/selected_screen_mapper.dart';
import 'package:delivery_app/widgets/customized_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Stack(
            children: [
              Positioned(
                bottom: 85,
                left: 20,
                right: 10,
                child: Text(
                  titleMapper[_selectedPageIndex]!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Positioned(
                bottom: 25,
                left: 20,
                right: 20,
                child: CustomizedSearchBar(),
              )
            ],
          ),
        ),
      ),
      body: screensMapper[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/grid.svg',
                colorFilter: _selectedPageIndex == 0
                    ? const ColorFilter.mode(Color(0xFFA259FF), BlendMode.srcIn)
                    : null,
              ),
              label: '',
              tooltip: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/shopping-cart.svg',
                colorFilter: _selectedPageIndex == 1
                    ? const ColorFilter.mode(Color(0xFFA259FF), BlendMode.srcIn)
                    : null,
              ),
              label: '',
              tooltip: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                colorFilter: _selectedPageIndex == 2
                    ? const ColorFilter.mode(Color(0xFFA259FF), BlendMode.srcIn)
                    : null,
              ),
              label: '',
              tooltip: 'Profile')
        ],
        currentIndex: _selectedPageIndex,
      ),
    );
  }
}
