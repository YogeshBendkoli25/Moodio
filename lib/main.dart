import 'package:flutter/material.dart';
import 'package:moodio/src/core/routes/names.dart';
import 'package:moodio/src/core/routes/pages.dart';
import 'package:moodio/src/features/splash/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: AppRoute.generate,
      home: Splashscreen(),
    );
  }
}
