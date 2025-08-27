import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.g.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:moodio/src/core/services/splash%20service/splash_service.dart';
import 'package:moodio/src/core/utils/font_extension.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final splashService = SplashService();

  @override
  void initState() {
    super.initState();
    splashService.checkNextRoute(context);
  }

  @override
  Widget build(BuildContext context) {
    print("Splash screen");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(20, 22, 22, 1),
                Color.fromRGBO(40, 41, 41, 1),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhosphorIcon(
              PhosphorIcons.musicNotes(PhosphorIconsStyle.duotone),
              size: 90,
              color: Color.fromRGBO(250, 250, 250, 1),
            ),
            Center(
              child: "Moodio Music".getTextTitle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                googleFont: GoogleFonts.afacad,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
