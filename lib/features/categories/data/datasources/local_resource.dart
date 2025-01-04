import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/categories/data/models/category_model_modified.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalResource {
  Future<List<CategoryModel>> getCachedCategories();
  Future<Unit> cacheCategoriesInDevice(List<CategoryModel> categoryModelsList);
}

class LocalResourceImplSharedPreferences implements LocalResource {
  final SharedPreferences sharedPreferences;

  const LocalResourceImplSharedPreferences({required this.sharedPreferences});
  @override
  Future<Unit> cacheCategoriesInDevice(
      List<CategoryModel> categoriesToBeCached) {
    List<Map<String, dynamic>> postModelsToJson = categoriesToBeCached
        .map<Map<String, dynamic>>((categoryModel) => categoryModel.toJson())
        .toList();

    sharedPreferences.setString(
        'CASHED_CATEGORIES', json.encode(postModelsToJson));

    return Future.value(unit);
  }

  @override
  Future<List<CategoryModel>> getCachedCategories() {
    final jsonString = sharedPreferences.getString('CASHED_CATEGORIES');
    if (jsonString != null) {
      List<Map<String, dynamic>> decodedJson = json.decode(jsonString);
      List<CategoryModel> categoriesModels = decodedJson
          .map((categoryObj) => CategoryModel.fromJson(categoryObj))
          .toList();

      return Future.value(categoriesModels);
    } else {
      throw NoCachedDataException();
    }
  }
}
