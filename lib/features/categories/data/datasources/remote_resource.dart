import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/categories/data/models/category_model_modified.dart';
import 'package:dio/dio.dart';

abstract class RemoteResource {
  Future<List<CategoryModel>> getAllCategories();
}

class RemoteResourceImpHttp implements RemoteResource {
  @override
  Future<List<CategoryModel>> getAllCategories() {
    throw UnimplementedError();
  }
}

class RemoteResourceImpDio implements RemoteResource {
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final dio = Dio();
    final response = await dio.get('http://10.0.2.2:3000/categories');
    if (response.statusCode == 200) {
      final List<dynamic> rawList = response.data as List<dynamic>;

      final fetchedCategories =
          rawList.map((category) => CategoryModel.fromJson(category)).toList();

      return fetchedCategories;
    } else {
      throw ServerException();
    }
  }
}
