import 'package:bloc/bloc.dart';
import 'package:delivery_app/core/errors/errors_strings.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/features/categories/domain/entities/category.dart';
import 'package:delivery_app/features/categories/domain/usecases/get_all_categories.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'categories_state.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  final GetAllCategoriesUseCase getAllcategories;

  CategoriesCubit({required this.getAllcategories})
      : super(CategoriesInitial());

  Future<void> fetchCategories() async {
    emit(CategoriesLoading());
    try {
      final response = await getAllcategories();

      response.fold(
          (failure) =>
              emit(CategoriesError('Error: ${mapFailureToMessage(failure)}')),
          (categories) => emit(CategoriesLoaded(categories)));
    } on DioException catch (dioError) {
      emit(CategoriesError('Dio Error: ${dioError.message}'));
    } catch (e) {
      emit(CategoriesError(e.toString()));
    }
  }

  String mapFailureToMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return SERVER_ERROR_MESSAGE;
      case NoInternetFailure():
        return OFFLINE_ERROR_MESSAGE;
      case NoCachedDataFailure():
        return EMPTYCACHE_ERROR_MESSAGE;
      default:
        return '$failure';
    }
  }
  // }
}
