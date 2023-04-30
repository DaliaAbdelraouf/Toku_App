import 'package:flutter/material.dart';

import '../models/language_model.dart';
import '../widgets/family_member_item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({
    super.key,
  });
  static const String id = 'familyMembersPage';

  final List<LanguageModel> familyMember = const [
    LanguageModel(
        title: 'Chichioya',
        subtitle: 'Father',
        image: 'assets/images/family_members/family_father.png',
        sound: 'sounds/family_members/father.wav'),
    LanguageModel(
        title: 'Musume',
        subtitle: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sounds/family_members/daughter.wav'),
    LanguageModel(
        title: 'Ojisan',
        subtitle: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sounds/family_members/grand father.wav'),
    LanguageModel(
        title: 'Hahaoya',
        subtitle: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        sound: 'sounds/family_members/mother.wav'),
    LanguageModel(
        title: 'Sobo',
        subtitle: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sounds/family_members/grand mother.wav'),
    LanguageModel(
        title: 'Nisan',
        subtitle: 'Older brother',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'sounds/family_members/older bother.wav'),
    LanguageModel(
        title: 'Ane',
        subtitle: 'Older sister',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'sounds/family_members/older sister.wav'),
    LanguageModel(
        title: 'Musuko',
        subtitle: 'Son',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sounds/family_members/son.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyMembers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: familyMember.length,
          itemBuilder: (context, index) {
            return FamilyMemberItem(
              familyMember: familyMember[index],
            );
          }),
    );
  }
}
