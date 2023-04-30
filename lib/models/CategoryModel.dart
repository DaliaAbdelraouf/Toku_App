import 'dart:ui';
import '../enum/category_enum.dart';

class CategoryModel {
  final String text;
  final Color color;
  final categoryTypes category_Type;

  const CategoryModel(
    { required this.text, required this.color, required this.category_Type}
  );
}
