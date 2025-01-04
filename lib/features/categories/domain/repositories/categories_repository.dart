import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriesRepository {
  Future<Either<Failure ,List<CategoryEntity>>> getAllCategories();
}
