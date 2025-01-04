import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/items/data/models/item_model.dart';
import 'package:dio/dio.dart';

abstract class RemoteResourceItems {
  Future<List<ItemModel>> getAllItems();
}

class RemoteResourceItemsImpHttp implements RemoteResourceItems {
  @override
  Future<List<ItemModel>> getAllItems() {
    throw UnimplementedError();
  }
}

class RemoteResourceItemsImpDio implements RemoteResourceItems {
  @override
  Future<List<ItemModel>> getAllItems() async {
    final dio = Dio();
    final response = await dio.get('http://10.0.2.2:3000/items');
    if (response.statusCode == 200) {
      final List<dynamic> rawList = response.data as List<dynamic>;

      final fetchedItems =
          rawList.map((item) => ItemModel.fromJson(item)).toList();

      return fetchedItems;
    } else {
      throw ServerException();
    }
  }
}
