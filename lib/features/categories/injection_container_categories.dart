import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/categories/data/datasources/local_resource.dart';
import 'package:delivery_app/features/categories/data/datasources/remote_resource.dart';
import 'package:delivery_app/features/categories/data/repositories/categories_repository_implementation.dart';
import 'package:delivery_app/features/categories/domain/repositories/categories_repository.dart';
import 'package:delivery_app/features/categories/domain/usecases/get_all_categories.dart';
import 'package:delivery_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:delivery_app/features/items/data/datasources/local_resource.dart';
import 'package:delivery_app/features/items/data/datasources/remote_resource.dart';
import 'package:delivery_app/features/items/data/repositories/item_repository_implementation.dart';
import 'package:delivery_app/features/items/domain/repositories/item_repository.dart';
import 'package:delivery_app/features/items/domain/usecases/get_all_items.dart';
import 'package:delivery_app/features/items/presentation/cubit/items_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
// Features - Categories

// Bloc

  sl.registerFactory(() => CategoriesCubit(getAllcategories: sl()));

// UseCases
  sl.registerLazySingleton(() => GetAllCategoriesUseCase(sl()));
// Repositories

  sl.registerLazySingleton<CategoriesRepository>(() =>
      CategoriesRepositoryImplementation(
          localResource: sl(), remoteResource: sl(), networkInfo: sl()));
// Resources
  sl.registerLazySingleton<LocalResource>(
      () => LocalResourceImplSharedPreferences(sharedPreferences: sl()));
  sl.registerLazySingleton<RemoteResource>(() => RemoteResourceImpDio());


// Features - Items 

  sl.registerFactory(() => ItemsCubit(getAllItems: sl()));

// UseCases
  sl.registerLazySingleton(() => GetAllItemsUseCase(sl()));
// Repositories

  sl.registerLazySingleton<ItemRepository>(() =>
      ItemRepositoryImplementation(
          localResource: sl(), remoteResource: sl(), networkInfo: sl()));
// Resources
  sl.registerLazySingleton<LocalResourceItems>(
      () => LocalResourceItemsImplSharedPreferences(sharedPreferences: sl()));
  sl.registerLazySingleton<RemoteResourceItems>(() => RemoteResourceItemsImpDio());

// Core

  sl.registerLazySingleton(
      () => NetworkInfoImplementation(connectionChecker: sl()));

// Externals

  final sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPref);

  sl.registerLazySingleton(() => InternetConnectionChecker.instance);
}
