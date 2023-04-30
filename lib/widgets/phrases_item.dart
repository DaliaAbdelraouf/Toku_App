import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/language_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrases});

  final LanguageModel phrases;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          10, 10, 10, 5), // set the desired margin here
      child: SizedBox(
        width: 200,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Colors.orange,
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 80,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  // '${phrases.title}\n${phrases.subtitle}',
                  FittedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          phrases.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          phrases.subtitle,
                          style: const TextStyle(fontSize: 17),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource(phrases.sound));
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
