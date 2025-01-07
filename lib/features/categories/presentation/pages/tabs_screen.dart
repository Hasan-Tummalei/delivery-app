import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/core/cubit/navbar_cubit.dart';
import 'package:delivery_app/mappers/screen_title_mapper.dart';
import 'package:delivery_app/mappers/selected_screen_mapper.dart';
import 'package:delivery_app/core/widgets/customized_search_bar.dart';
import 'package:delivery_app/core/widgets/navigation_bar_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => NavbarCubit(),
      child: const _TabsScreenView(),
    );
  }
}

class _TabsScreenView extends StatelessWidget {
  const _TabsScreenView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, navBarState) {
        final selectedIndex = navBarState.selectedIndex;

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 239, 239, 239),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120.w),
            child: AppBar(
              forceMaterialTransparency: true,
              backgroundColor: const Color.fromARGB(255, 239, 239, 239),
              flexibleSpace: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 20.w,
                    right: 10.w,
                    child: Text(
                      titleMapper[selectedIndex]!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: const CustomizedSearchBar(),
              ),
              Expanded(
                child: screensMapper[selectedIndex]!,
              )
            ],
          ),
          bottomNavigationBar: NavigationBarBottom(
            selectPage: (i) =>
                BlocProvider.of<NavbarCubit>(context).selectPage(i),
            selectedPageIndex: selectedIndex,
          ),
        );
      },
    );
  }
}
