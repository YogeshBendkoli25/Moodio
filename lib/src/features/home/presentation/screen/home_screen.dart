import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:moodio/src/features/home/presentation/pages/mood_page.dart';
import 'package:moodio/src/features/home/presentation/pages/quick_selection_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(123, 123, 123, 1),
      body: CarouselSlider(
        slideTransform: CubeTransform(),
        unlimitedMode: true,
        slideIndicator: CircularSlideIndicator(
            indicatorRadius: 5,
            itemSpacing: 15,
            padding: EdgeInsets.only(bottom: 20),
            currentIndicatorColor: Colors.white),
        children: [
          MoodPage(),
          QuickSelectionPage(),
        ],
      ),
    );
  }
}
