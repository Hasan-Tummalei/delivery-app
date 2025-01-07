import 'package:dartz/dartz.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/features/items/domain/entities/item.dart';
import 'package:delivery_app/features/items/domain/repositories/item_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllItemsUseCase {
  ItemRepository repository;

  GetAllItemsUseCase(this.repository);

  Future<Either<Failure, List<ItemEntity>>> call() async {
    return await repository.getAllItems();
  }
}
