import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/language_model.dart';

class FamilyMemberItem extends StatelessWidget {
  const FamilyMemberItem({super.key, required this.familyMember});

  final LanguageModel familyMember;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          5, 10, 5, 5), // set the desired margin here
      child: SizedBox(
        width: 200,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Colors.orange,
              height: 100,
              child: Row(
                children: [
                  if (familyMember.image != null)
                    Container(
                      height: 80,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image(
                        image: AssetImage(familyMember.image!),
                      ),
                    ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    '${familyMember.title}\n${familyMember.subtitle}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource(familyMember.sound));
                    },
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.white,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
