import 'package:bloc/bloc.dart';
import 'package:delivery_app/core/errors/errors_strings.dart';
import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/features/items/domain/entities/item.dart';
import 'package:delivery_app/features/items/domain/usecases/get_all_items.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'items_state.dart';

@injectable
class ItemsCubit extends Cubit<ItemsState> {
  final GetAllItemsUseCase getAllItems;

  ItemsCubit({required this.getAllItems}) : super(ItemsInitial());

  Future<void> fetchItems() async {
    emit(ItemsLoading());
    try {
      final response = await getAllItems();

      response.fold(
          (failure) =>
              emit(ItemsError('Error: ${mapFailureToMessage(failure)}')),
          (items) => emit(ItemsLoaded(items)));
    } on DioException catch (dioError) {
      emit(ItemsError('Dio Error: ${dioError.message}'));
    } catch (e) {
      emit(ItemsError(e.toString()));
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
}
