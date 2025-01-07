// ignore_for_file: dead_code

import 'package:dartz/dartz.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/categories/data/datasources/local_resource.dart';
import 'package:delivery_app/features/categories/data/datasources/remote_resource.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImplementation implements CategoriesRepository {
  final RemoteResource remoteResource;
  final LocalResource localResource;
  final NetworkInfoImplementation networkInfo;

  CategoriesRepositoryImplementation(
      {required this.localResource,
      required this.remoteResource,
      required this.networkInfo});
  @override
  Future<Either<Failure, List<CategoryEntity>>> getAllCategories() async {
    // if (await networkInfo.isConnected) {
    if (true) {
      try {
        final fetchedCategories = await remoteResource.getAllCategories();
        return Right(
            fetchedCategories.map((category) => category.toEntity()).toList());
      } on OfflineException {
        return Left(NoInternetFailure());
      }
    } else {
      try {
        final localCachedCategories = await localResource.getCachedCategories();
        return Right(localCachedCategories
            .map((category) => category.toEntity())
            .toList());
      } on NoCachedDataException {
        return Left(NoCachedDataFailure());
      }
    }
  }
}
