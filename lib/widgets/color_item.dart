import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/language_model.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.color});

  final LanguageModel color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          10, 10, 10, 10), // set the desired margin here
      child: SizedBox(
        width: 200,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Colors.orange,
              height: 100,
              child: Row(
                children: [
                    if (color.image != null)
                  Container(

                    height: 80,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image(
                      image: AssetImage(color.image!),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    '${color.title}\n${color.subtitle}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource(color.sound));
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
