import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moodio/src/core/utils/font_extension.dart';

class MoodCardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Widget emoji;

  const MoodCardWidget({
    super.key,
    required this.title,
    required this.color,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 234, 234, 0.10),
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(255, 255, 255, 0.80), // Slight highlight
            Color.fromRGBO(234, 234, 234, 0.1), // Base color
            Color.fromRGBO(200, 200, 200, 0.05), // Subtle depth
          ],
          stops: [0.0, 1, 1.5],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.7),
            offset: Offset(4, 4),
            blurRadius: 8,
            spreadRadius: 1,
          ),
          // Inner shadow for highlight (top-left)
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.07),
            offset: Offset(-2, -2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
        border: Border.all(
          color:
              Colors.white.withValues(alpha: 0.2), // Subtle border for polish
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 8),
          emoji,
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: "$title".getTextTitle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: color,
              googleFont: GoogleFonts.roboto,
            ),
          ),
        ],
      ),
    );
  }
}
