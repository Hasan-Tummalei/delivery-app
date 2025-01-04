// ignore_for_file: dead_code

import 'package:dartz/dartz.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/items/data/datasources/local_resource.dart';
import 'package:delivery_app/features/items/data/datasources/remote_resource.dart';
import 'package:delivery_app/features/items/domain/entities/item.dart';
import 'package:delivery_app/features/items/domain/repositories/item_repository.dart';

class ItemRepositoryImplementation implements ItemRepository {
  final RemoteResourceItems remoteResource;
  final LocalResourceItems localResource;
  final NetworkInfoImplementation networkInfo;

  ItemRepositoryImplementation(
      {required this.localResource,
      required this.remoteResource,
      required this.networkInfo});
  @override
  Future<Either<Failure, List<ItemEntity>>> getAllItems() async {
    // if (await networkInfo.isConnected) {
    if (true) {
      try {
        final fetchedItems = await remoteResource.getAllItems();
        return Right(fetchedItems.map((item) => item.toEntity()).toList());
      } on OfflineException {
        return Left(NoInternetFailure());
      }
    } else {
      try {
        final localCachedCategories = await localResource.getCachedItems();
        return Right(localCachedCategories
            .map((category) => category.toEntity())
            .toList());
      } on NoCachedDataException {
        return Left(NoCachedDataFailure());
      }
    }
  }
}
