import 'package:delivery_app/features/categories/data/datasources/remote_resource.dart';
import 'package:delivery_app/features/items/data/datasources/remote_resource.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker.instance;

  @LazySingleton()
  Dio get dio => Dio();

  @LazySingleton()
  RemoteResourceItems get remoteResourceItems => RemoteResourceItems(Dio());
  @LazySingleton()
  RemoteResource get remoteResource => RemoteResource(Dio());
}
