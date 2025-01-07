import 'package:delivery_app/features/categories/data/models/category_model_modified.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'remote_resource.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:3000/')
abstract class RemoteResource {
  factory RemoteResource(Dio dio, {String? baseUrl}) = _RemoteResource;

  @GET('categories')
  Future<List<CategoryModel>> getAllCategories();
}

class RemoteResourceImpHttp implements RemoteResource {
  @override
  Future<List<CategoryModel>> getAllCategories() {
    throw UnimplementedError();
  }
}

// @LazySingleton(as: RemoteResource)
// class RemoteResourceImpDio implements RemoteResource {
//   @override
//   Future<List<CategoryModel>> getAllCategories() async {
//     final dio = Dio();
//     final response = await dio.get('http://10.0.2.2:3000/categories');
//     if (response.statusCode == 200) {
//       final List<dynamic> rawList = response.data as List<dynamic>;

//       final fetchedCategories =
//           rawList.map((category) => CategoryModel.fromJson(category)).toList();

//       return fetchedCategories;
//     } else {
//       throw ServerException();
//     }
//   }
// }
