// import 'package:delivery_app/core/network/network_info.dart';
// import 'package:delivery_app/features/items/data/datasources/local_resource.dart';
// import 'package:delivery_app/features/items/data/datasources/remote_resource.dart';


// import 'package:delivery_app/features/items/data/repositories/item_repository_implementation.dart';
// import 'package:delivery_app/features/items/domain/repositories/item_repository.dart';
// import 'package:delivery_app/features/items/domain/usecases/get_all_items.dart';
// import 'package:delivery_app/features/items/presentation/cubit/items_cubit.dart';
// import 'package:get_it/get_it.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// final sl2 = GetIt.instance;

// Future<void> init2() async {
// // Features - Items

// // Bloc

//   sl2.registerFactory(() => ItemsCubit(getAllItems: sl2()));

// // UseCases
//   sl2.registerLazySingleton(() => GetAllItemsUseCase(sl2()));
// // Repositories

//   sl2.registerLazySingleton<ItemRepository>(() =>
//       ItemRepositoryImplementation(
//           localResource: sl2(), remoteResource: sl2(), networkInfo: sl2()));
// // Resources
//   sl2.registerLazySingleton<LocalResource>(
//       () => LocalResourceImplSharedPreferences(sharedPreferences: sl2()));
//   sl2.registerLazySingleton<RemoteResource>(() => RemoteResourceImpDio());

// // Core

//   sl2.registerLazySingleton(
//       () => NetworkInfoImplementation(connectionChecker: sl2()));

// // Externals

//   final sharedPref = await SharedPreferences.getInstance();
//   sl2.registerLazySingleton(() => sharedPref);

//   sl2.registerLazySingleton(() => InternetConnectionChecker.instance);
// }
