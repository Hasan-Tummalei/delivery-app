part of 'items_cubit.dart';

@immutable
sealed class ItemsState {}

final class ItemsInitial extends ItemsState {}

final class ItemsLoading extends ItemsState {}

final class ItemsLoaded extends ItemsState {
  final List<ItemEntity> items;
  ItemsLoaded(this.items);
}

final class ItemsError extends ItemsState {
  final String errorMessage;
  ItemsError(this.errorMessage);
}
