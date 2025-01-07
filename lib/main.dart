import 'package:delivery_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:delivery_app/features/get_it_injectables.dart';
import 'package:delivery_app/features/items/presentation/cubit/items_cubit.dart';
import 'package:delivery_app/core/cubit/navbar_cubit.dart';
import 'package:delivery_app/router/app_router.dart';
import 'package:delivery_app/core/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  await configureDependencies();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => DeliveryApp(),
    ),
  );
}

class DeliveryApp extends StatelessWidget {
  DeliveryApp({
    super.key,
  });
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<CategoriesCubit>(
              create: (_) => getIt<CategoriesCubit>(),
            ),
            BlocProvider<ItemsCubit>(
              create: (_) => getIt<ItemsCubit>(),
            ),
            BlocProvider<NavbarCubit>(
              create: (_) => NavbarCubit(),
            ),
          ],
          child: MaterialApp.router(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'Delivery App',
            theme: AppTheme.lightTheme,
            routerConfig: _appRouter.config(),
          ),
        );
      },
    );
  }
}
