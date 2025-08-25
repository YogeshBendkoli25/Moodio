import 'package:flutter/material.dart';
import 'package:moodio/src/features/splash/splashScreen.dart';
import '/src/core/error/error.dart';
import 'routes.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => Splashscreen());
      default:
        throw const RouteException('Route not found!');
    }
  }
}
