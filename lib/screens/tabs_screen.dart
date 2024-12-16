import 'package:delivery_app/mappers/screen_title_mapper.dart';
import 'package:delivery_app/mappers/selected_screen_mapper.dart';
import 'package:delivery_app/widgets/customized_search_bar.dart';
import 'package:delivery_app/widgets/navigation_bar/navigation_bar_bottom.dart';
import 'package:flutter/material.dart';

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
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: const Color.fromARGB(255, 239, 239, 239),
          flexibleSpace: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 20,
                right: 10,
                child: Text(
                  titleMapper[_selectedPageIndex]!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: CustomizedSearchBar(),
        ),
        Expanded(child: screensMapper[_selectedPageIndex]!)
      ]),
      bottomNavigationBar: NavigationBarBottom(
        selectPage: _selectPage,
        selectedPageIndex: _selectedPageIndex,
      ),
    );
  }
}
