import 'package:flutter/material.dart';

import '../models/language_model.dart';
import '../widgets/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({
    super.key,
  });
  static const String id = 'phrasesPage';

  final List<LanguageModel> phrases = const [
     LanguageModel(
        title: 'Kodoku suru koto o wasurenaide kudasai',
        subtitle: 'Dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    LanguageModel(
        title: 'Watashi wa puroguramingu ga daisukidesu',
        subtitle: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    LanguageModel(title: 'Doko ni iku no', subtitle: 'Where are you going?',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    LanguageModel(title: 'Namae wa nandesu ka', subtitle: 'What is your name?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    LanguageModel(
        title: 'Watashi wa anime ga daisukidesu', subtitle: 'I love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    LanguageModel(
        title: 'Go kibun wa ikagadesu ka', subtitle: 'How are you feeling?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    LanguageModel(title: 'Kimsau ka', subtitle: 'Are you coming?',
        sound: 'sounds/phrases/are_you_coming.wav'),
    LanguageModel(
        title: 'Go kibun wa ikagadesu ka', subtitle: 'How are you feeling?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    LanguageModel(title: 'Kimsau ka', subtitle: 'Are you coming?',
        sound: 'sounds/phrases/are_you_coming.wav'),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              phrases: phrases[index],
            );
          }),
    );
  }
}
