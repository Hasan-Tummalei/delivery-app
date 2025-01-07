import 'package:delivery_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:delivery_app/features/items/domain/entities/item.dart';
abstract class ItemRepository {
  Future<Either<Failure ,List<ItemEntity>>> getAllItems();
}
