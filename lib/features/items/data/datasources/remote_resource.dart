import 'package:delivery_app/features/items/data/models/item_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_resource.g.dart'; // This generates the code for you

@RestApi(baseUrl: 'http://10.0.2.2:3000/')
abstract class RemoteResourceItems {
  factory RemoteResourceItems(Dio dio, {String? baseUrl}) =
      _RemoteResourceItems;

  @GET('items')
  Future<List<ItemModel>> getAllItems();
}

class RemoteResourceItemsImpHttp implements RemoteResourceItems {
  @override
  Future<List<ItemModel>> getAllItems() {
    throw UnimplementedError();
  }
}

// @LazySingleton(as: RemoteResourceItems)
// class RemoteResourceItemsImpDio implements RemoteResourceItems {
//   final Dio _dio;

//   // Inject Dio using constructor
//   RemoteResourceItemsImpDio(this._dio);

//   @override
//   Future<List<ItemModel>> getAllItems() async {
//     try {
//       // Make API call using Retrofit-generated client
//       final items = await _dio.get<List<dynamic>>('items');

//       // If successful, map raw data to ItemModel
//       return items.data!
//           .map((item) => ItemModel.fromJson(item as Map<String, dynamic>))
//           .toList();
//     } catch (e) {
//       // Catch any exceptions and throw the relevant exception
//       throw ServerException();
//     }
//   }
// }
