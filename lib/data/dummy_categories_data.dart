import 'package:delivery_app/models/category_model.dart';

List<CategoryModel> dummyCategoryData = const [
  CategoryModel(
    title: 'Vegetables',
    category: CategoryType.vegetables,
    image: 'assets/images/vegetables.png',
    stock: 30,
  ),
  CategoryModel(
    title: 'Fruits',
    category: CategoryType.fruits,
    image: 'assets/images/fruits.png',
    stock: 20,
  ),
  CategoryModel(
    title: 'Bread',
    category: CategoryType.bread,
    image: 'assets/images/bread.png',
    stock: 15,
  ),
  CategoryModel(
    title: 'Sweets',
    category: CategoryType.sweets,
    image: 'assets/images/sweets.png',
    stock: 10,
  ),
  CategoryModel(
    title: 'Pasta',
    category: CategoryType.pasta,
    image: 'assets/images/pasta.png',
    stock: 25,
  ),
  CategoryModel(
    title: 'Drinks',
    category: CategoryType.drinks,
    image: 'assets/images/drinks.png',
    stock: 50,
  ),
];
