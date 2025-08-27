import 'package:flutter/material.dart';
import 'package:moodio/src/features/home/presentation/screen/home_screen.dart';
import 'package:moodio/src/features/home/presentation/pages/mood_page.dart';
import 'package:moodio/src/features/splash/splashScreen.dart';
import '/src/core/error/error.dart';
import 'routes.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => Splashscreen());

      case RoutesName.homePage:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.moodPage:
        return MaterialPageRoute(builder: (context) => MoodPage());
      // case RoutesName.moodPlayerPage:
      //   return MaterialPageRoute(builder: (context) => MoodPlayerPage());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
