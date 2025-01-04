import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/features/categories/presentation/pages/tabs_screen.dart';
import 'package:delivery_app/features/items/presentation/pages/selected_category_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: TabsRoute.page, initial: true),
        AutoRoute(page: SelectedCategoryRoute.page),
      ];
}
