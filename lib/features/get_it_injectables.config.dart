// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:delivery_app/core/network/network_info.dart' as _i1072;
import 'package:delivery_app/core/register_module.dart' as _i720;
import 'package:delivery_app/features/categories/data/datasources/local_resource.dart'
    as _i585;
import 'package:delivery_app/features/categories/data/datasources/remote_resource.dart'
    as _i19;
import 'package:delivery_app/features/categories/data/repositories/categories_repository_implementation.dart'
    as _i860;
import 'package:delivery_app/features/categories/domain/repositories/categories_repository.dart'
    as _i109;
import 'package:delivery_app/features/categories/domain/usecases/get_all_categories.dart'
    as _i899;
import 'package:delivery_app/features/categories/presentation/cubit/categories_cubit.dart'
    as _i329;
import 'package:delivery_app/features/items/data/datasources/local_resource.dart'
    as _i118;
import 'package:delivery_app/features/items/data/datasources/remote_resource.dart'
    as _i291;
import 'package:delivery_app/features/items/data/repositories/item_repository_implementation.dart'
    as _i833;
import 'package:delivery_app/features/items/domain/repositories/item_repository.dart'
    as _i885;
import 'package:delivery_app/features/items/domain/usecases/get_all_items.dart'
    as _i335;
import 'package:delivery_app/features/items/presentation/cubit/items_cubit.dart'
    as _i493;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i291.RemoteResourceItems>(
        () => registerModule.remoteResourceItems);
    gh.lazySingleton<_i19.RemoteResource>(() => registerModule.remoteResource);
    gh.lazySingleton<_i1072.NetworkInfoImplementation>(() =>
        _i1072.NetworkInfoImplementation(
            connectionChecker: gh<_i973.InternetConnectionChecker>()));
    gh.lazySingleton<_i118.LocalResourceItems>(() =>
        _i118.LocalResourceItemsImplSharedPreferences(
            sharedPreferences: gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i585.LocalResource>(() =>
        _i585.LocalResourceImplSharedPreferences(
            sharedPreferences: gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i109.CategoriesRepository>(
        () => _i860.CategoriesRepositoryImplementation(
              localResource: gh<_i585.LocalResource>(),
              remoteResource: gh<_i19.RemoteResource>(),
              networkInfo: gh<_i1072.NetworkInfoImplementation>(),
            ));
    gh.lazySingleton<_i899.GetAllCategoriesUseCase>(
        () => _i899.GetAllCategoriesUseCase(gh<_i109.CategoriesRepository>()));
    gh.lazySingleton<_i885.ItemRepository>(
        () => _i833.ItemRepositoryImplementation(
              localResource: gh<_i118.LocalResourceItems>(),
              remoteResource: gh<_i291.RemoteResourceItems>(),
              networkInfo: gh<_i1072.NetworkInfoImplementation>(),
            ));
    gh.factory<_i329.CategoriesCubit>(() => _i329.CategoriesCubit(
        getAllcategories: gh<_i899.GetAllCategoriesUseCase>()));
    gh.lazySingleton<_i335.GetAllItemsUseCase>(
        () => _i335.GetAllItemsUseCase(gh<_i885.ItemRepository>()));
    gh.factory<_i493.ItemsCubit>(
        () => _i493.ItemsCubit(getAllItems: gh<_i335.GetAllItemsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i720.RegisterModule {}
