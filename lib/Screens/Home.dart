import 'package:flutter/material.dart';
import 'package:my_app/enum/category_enum.dart';
import '../models/CategoryModel.dart';
import '../widgets/category_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  static const String id = 'homeView';

  final List<CategoryModel> categories = const [
    CategoryModel(
        category_Type: categoryTypes.numbers, //enum
        text: 'Numbers',
        color: Colors.orange),
    CategoryModel(
        category_Type: categoryTypes.familyMembers, //enum
        text: 'Family Members',
        color: Colors.green),
    CategoryModel(
        category_Type: categoryTypes.colors, //enum
        text: 'Colors',
        color: Colors.purple),
    CategoryModel(
        category_Type: categoryTypes.phrases, //enum
        text: 'Phrases ',
        color: Colors.lightBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
        elevation: 8,
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              categoryModel: categories[index],
            );
          }),
    );
  }
}
