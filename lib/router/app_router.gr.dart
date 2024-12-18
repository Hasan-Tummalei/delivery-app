// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [SelectedCategoryScreen]
class SelectedCategoryRoute extends PageRouteInfo<SelectedCategoryRouteArgs> {
  SelectedCategoryRoute({
    key,
    required CategoryModel selectedCat,
    List<PageRouteInfo>? children,
  }) : super(
          SelectedCategoryRoute.name,
          args: SelectedCategoryRouteArgs(
            key: key,
            selectedCat: selectedCat,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectedCategoryRouteArgs>();
      return SelectedCategoryScreen(
        key: args.key,
        selectedCat: args.selectedCat,
      );
    },
  );
}

class SelectedCategoryRouteArgs {
  const SelectedCategoryRouteArgs({
    this.key,
    required this.selectedCat,
  });

  final key;

  final CategoryModel selectedCat;

  @override
  String toString() {
    return 'SelectedCategoryRouteArgs{key: $key, selectedCat: $selectedCat}';
  }
}

/// generated route for
/// [TabsScreen]
class TabsRoute extends PageRouteInfo<void> {
  const TabsRoute({List<PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TabsScreen();
    },
  );
}
