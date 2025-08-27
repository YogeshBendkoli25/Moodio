import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.g.dart';
import 'package:flutter/material.dart';

class MoodModel {
  final String title;
  final Color textColor;
  final Widget emoji;

  MoodModel({
    required this.title,
    required this.textColor,
    required this.emoji,
  });
}

List<MoodModel> moodModelList = [
  MoodModel(
    title: 'Happy',
    textColor: Colors.white,
    emoji: AnimatedEmoji(
      AnimatedEmojis.smile,
      size: 50,
    ),
  ),
  MoodModel(
    title: 'Chill',
    textColor: Colors.white,
    emoji: AnimatedEmoji(
      AnimatedEmojis.sunglassesFace,
      size: 50,
    ),
  ),
  MoodModel(
    title: 'Workout',
    textColor: Colors.white,
    emoji: AnimatedEmoji(
      AnimatedEmojis.fire,
      size: 50,
    ),
  ),
  MoodModel(
    title: 'Romantic',
    textColor: Colors.white,
    emoji: AnimatedEmoji(
      AnimatedEmojis.twoHearts,
      size: 50,
    ),
  ),
  MoodModel(
    title: 'Clam',
    textColor: Colors.white,
    emoji: AnimatedEmoji(
      AnimatedEmojis.relieved,
      size: 50,
    ),
  ),
  MoodModel(
    title: 'Sad',
    textColor: Colors.white,
    emoji: AnimatedEmoji(
      AnimatedEmojis.pensive,
      size: 50,
    ),
  ),
];
