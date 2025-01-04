import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/items/data/models/item_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalResourceItems {
  Future<List<ItemModel>> getCachedItems();
  Future<Unit> cacheItemsInDevice(List<ItemModel> categoryModelsList);
}

class LocalResourceItemsImplSharedPreferences implements LocalResourceItems {
  final SharedPreferences sharedPreferences;

  const LocalResourceItemsImplSharedPreferences({required this.sharedPreferences});
  @override
  Future<Unit> cacheItemsInDevice(List<ItemModel> itemsToBeCached) {
    List<Map<String, dynamic>> itemModelsToJson = itemsToBeCached
        .map<Map<String, dynamic>>((itemModel) => itemModel.toJson())
        .toList();

    sharedPreferences.setString('CASHED_ITEMS', json.encode(itemModelsToJson));

    return Future.value(unit);
  }

  @override
  Future<List<ItemModel>> getCachedItems() {
    final jsonString = sharedPreferences.getString('CASHED_ITEMS');
    if (jsonString != null) {
      List<Map<String, dynamic>> decodedJson = json.decode(jsonString);
      List<ItemModel> itemModels = decodedJson
          .map((categoryObj) => ItemModel.fromJson(categoryObj))
          .toList();

      return Future.value(itemModels);
    } else {
      throw NoCachedDataException();
    }
  }
}
