import 'package:flutter/material.dart';

class LanguageModel {
  final String title;
  final String subtitle;
  final String? image;
  final String sound;

  const LanguageModel({required this.title,
   required this.subtitle, 
   this.image,
    required this.sound});
}
