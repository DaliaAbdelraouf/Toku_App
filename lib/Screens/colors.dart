import 'package:flutter/material.dart';
import 'package:my_app/widgets/color_item.dart';

import '../models/language_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({
    super.key,
  });
  static const String id = 'colorsPage';

  final List<LanguageModel> colors = const [
    LanguageModel(
        title: 'Burakku',
        subtitle: 'Black',
        image: 'assets/images/colors/color_black.png',
        sound: 'sounds/colors/black.wav'),
    LanguageModel(
        title: 'Chairo',
        subtitle: 'Brown',
        image: 'assets/images/colors/color_brown.png',
        sound: 'sounds/colors/brown.wav'),
    LanguageModel(
        title: 'Hokori',
        subtitle: 'dusty yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
        sound: 'sounds/colors/dusty yellow.wav'),
    LanguageModel(
        title: 'Gure',
        subtitle: 'Gray',
        image: 'assets/images/colors/color_gray.png',
        sound: 'sounds/colors/gray.wav'),
    LanguageModel(
        title: 'Midori',
        subtitle: 'Green',
        image: 'assets/images/colors/color_green.png',
        sound: 'sounds/colors/green.wav'),
    LanguageModel(
        title: 'Aka',
        subtitle: 'Red',
        image: 'assets/images/colors/color_red.png',
        sound: 'sounds/colors/red.wav'),
    LanguageModel(
        title: 'Burakku',
        subtitle: 'Black',
        image: 'assets/images/colors/color_black.png',
        sound: 'sounds/colors/black.wav'),
    LanguageModel(
        title: 'Shiroi',
        subtitle: 'White',
        image: 'assets/images/colors/color_white.png',
        sound: 'sounds/colors/white.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('colors'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ColorsItem(
              color: colors[index],
            );
          }),
    );
  }
}
