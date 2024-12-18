import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/screens/tabs_screen.dart';
import 'package:delivery_app/screens/selected_category_screen.dart';
import 'package:delivery_app/models/category_model.dart';

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
