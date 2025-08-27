import 'package:flutter/material.dart';
import 'package:moodio/src/core/utils/font_extension.dart';

class QuickSelectionPage extends StatefulWidget {
  const QuickSelectionPage({super.key});

  @override
  State<QuickSelectionPage> createState() => _QuickSelectionPageState();
}

class _QuickSelectionPageState extends State<QuickSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(20, 22, 22, 1),
            Color.fromRGBO(40, 41, 41, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            "Quick selection".getLatoTitle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
