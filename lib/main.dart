import 'package:flutter/material.dart';
import 'package:my_app/Screens/FamilyMembers.dart';
import 'package:my_app/Screens/Numbers.dart';
import 'package:my_app/Screens/Phrases.dart';
import 'Screens/Home.dart';
import 'Screens/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        NumbersPage.id: (context) => const NumbersPage(),
        FamilyMembersPage.id: (context) => const FamilyMembersPage(),
        ColorsPage.id:(context) => const ColorsPage(),
        PhrasesPage.id: (context) => const PhrasesPage()
      },
      initialRoute: HomePage.id,
    );
  }
}
