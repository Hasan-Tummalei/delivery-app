// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  String get itemTitle => throw _privateConstructorUsedError;
  double get itemPrice => throw _privateConstructorUsedError;
  String get itemUnit => throw _privateConstructorUsedError;
  String get itemImage => throw _privateConstructorUsedError;
  String get itemCategory => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get weightPerPiece => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  /// Serializes this ItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res, ItemModel>;
  @useResult
  $Res call(
      {String itemTitle,
      double itemPrice,
      String itemUnit,
      String itemImage,
      String itemCategory,
      String description,
      int weightPerPiece,
      String country});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res, $Val extends ItemModel>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemTitle = null,
    Object? itemPrice = null,
    Object? itemUnit = null,
    Object? itemImage = null,
    Object? itemCategory = null,
    Object? description = null,
    Object? weightPerPiece = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      itemTitle: null == itemTitle
          ? _value.itemTitle
          : itemTitle // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as double,
      itemUnit: null == itemUnit
          ? _value.itemUnit
          : itemUnit // ignore: cast_nullable_to_non_nullable
              as String,
      itemImage: null == itemImage
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weightPerPiece: null == weightPerPiece
          ? _value.weightPerPiece
          : weightPerPiece // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemModelImplCopyWith<$Res>
    implements $ItemModelCopyWith<$Res> {
  factory _$$ItemModelImplCopyWith(
          _$ItemModelImpl value, $Res Function(_$ItemModelImpl) then) =
      __$$ItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemTitle,
      double itemPrice,
      String itemUnit,
      String itemImage,
      String itemCategory,
      String description,
      int weightPerPiece,
      String country});
}

/// @nodoc
class __$$ItemModelImplCopyWithImpl<$Res>
    extends _$ItemModelCopyWithImpl<$Res, _$ItemModelImpl>
    implements _$$ItemModelImplCopyWith<$Res> {
  __$$ItemModelImplCopyWithImpl(
      _$ItemModelImpl _value, $Res Function(_$ItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemTitle = null,
    Object? itemPrice = null,
    Object? itemUnit = null,
    Object? itemImage = null,
    Object? itemCategory = null,
    Object? description = null,
    Object? weightPerPiece = null,
    Object? country = null,
  }) {
    return _then(_$ItemModelImpl(
      itemTitle: null == itemTitle
          ? _value.itemTitle
          : itemTitle // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as double,
      itemUnit: null == itemUnit
          ? _value.itemUnit
          : itemUnit // ignore: cast_nullable_to_non_nullable
              as String,
      itemImage: null == itemImage
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      weightPerPiece: null == weightPerPiece
          ? _value.weightPerPiece
          : weightPerPiece // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemModelImpl implements _ItemModel {
  const _$ItemModelImpl(
      {required this.itemTitle,
      required this.itemPrice,
      required this.itemUnit,
      required this.itemImage,
      required this.itemCategory,
      required this.description,
      required this.weightPerPiece,
      required this.country});

  factory _$ItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemModelImplFromJson(json);

  @override
  final String itemTitle;
  @override
  final double itemPrice;
  @override
  final String itemUnit;
  @override
  final String itemImage;
  @override
  final String itemCategory;
  @override
  final String description;
  @override
  final int weightPerPiece;
  @override
  final String country;

  @override
  String toString() {
    return 'ItemModel(itemTitle: $itemTitle, itemPrice: $itemPrice, itemUnit: $itemUnit, itemImage: $itemImage, itemCategory: $itemCategory, description: $description, weightPerPiece: $weightPerPiece, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemModelImpl &&
            (identical(other.itemTitle, itemTitle) ||
                other.itemTitle == itemTitle) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.itemUnit, itemUnit) ||
                other.itemUnit == itemUnit) &&
            (identical(other.itemImage, itemImage) ||
                other.itemImage == itemImage) &&
            (identical(other.itemCategory, itemCategory) ||
                other.itemCategory == itemCategory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.weightPerPiece, weightPerPiece) ||
                other.weightPerPiece == weightPerPiece) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemTitle, itemPrice, itemUnit,
      itemImage, itemCategory, description, weightPerPiece, country);

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemModelImplCopyWith<_$ItemModelImpl> get copyWith =>
      __$$ItemModelImplCopyWithImpl<_$ItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemModelImplToJson(
      this,
    );
  }

  @override
  ItemEntity toEntity() {
    return ItemEntity(
      itemTitle: itemTitle,
      itemPrice: itemPrice,
      itemCategory: responseMapper[itemCategory] ??
          responseMapper[
              'vegetables']!, // check for another solution for enums issue.
      itemImage: itemImage,
      itemUnit: itemUnit,
      description: description,
      weightPerPiece: weightPerPiece,
      country: country,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {required final String itemTitle,
      required final double itemPrice,
      required final String itemUnit,
      required final String itemImage,
      required final String itemCategory,
      required final String description,
      required final int weightPerPiece,
      required final String country}) = _$ItemModelImpl;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$ItemModelImpl.fromJson;

  @override
  String get itemTitle;
  @override
  double get itemPrice;
  @override
  String get itemUnit;
  @override
  String get itemImage;
  @override
  String get itemCategory;
  @override
  String get description;
  @override
  int get weightPerPiece;
  @override
  String get country;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemModelImplCopyWith<_$ItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
