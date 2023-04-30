import 'package:flutter/material.dart';
import 'package:my_app/models/language_model.dart';

import '../widgets/number_item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({
    super.key,
  });

  static const String id = 'numbersPage';
  final List<LanguageModel> numbers = const [
    LanguageModel(
        title: 'ichi',
        subtitle: 'one',
        image: 'assets/images/numbers/number_one.png',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    LanguageModel(
        title: 'Ni',
        subtitle: 'Two',
        image: 'assets/images/numbers/number_two.png',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    LanguageModel(
        title: 'San',
        subtitle: 'Three',
        image: 'assets/images/numbers/number_three.png',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    LanguageModel(
        title: 'Shi',
        subtitle: 'Four',
        image: 'assets/images/numbers/number_four.png',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    LanguageModel(
        title: 'Go',
        subtitle: 'Five',
        image: 'assets/images/numbers/number_five.png',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    LanguageModel(
        title: 'Roku',
        subtitle: 'Six',
        image: 'assets/images/numbers/number_six.png',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    LanguageModel(
        title: 'Sebun',
        subtitle: 'Seven',
        image: 'assets/images/numbers/number_seven.png',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    LanguageModel(
        title: 'Hechi',
        subtitle: 'Eight',
        image: 'assets/images/numbers/number_eight.png',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersItem(
              number: numbers[index],
            );
          }),
    );
  }
}
