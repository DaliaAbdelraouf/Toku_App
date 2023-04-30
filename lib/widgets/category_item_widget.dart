import 'package:flutter/material.dart';
import 'package:my_app/enum/category_enum.dart';
import '../Screens/FamilyMembers.dart';
import '../Screens/Numbers.dart';
import '../Screens/Phrases.dart';
import '../Screens/colors.dart';
import '../models/CategoryModel.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (categoryModel.category_Type) {
          case categoryTypes.numbers:
            Navigator.pushNamed(context, NumbersPage.id);
            break;
          case categoryTypes.familyMembers:
            Navigator.pushNamed(context, FamilyMembersPage.id);
            break;
          case categoryTypes.colors:
            Navigator.pushNamed(context, ColorsPage.id);
            break;
          case categoryTypes.phrases:
            Navigator.pushNamed(context, PhrasesPage.id);
            break;
        }
      },
      child: Container(
        height: 100,
        color: categoryModel.color,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              categoryModel.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
