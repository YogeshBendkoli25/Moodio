import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension FontExtension on String {
  Widget getLatoTitle({
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(0, 0, 0, 0.88),
    TextStyle Function({
      double? fontSize,
      FontWeight? fontWeight,
      Color? color,
    })? googleFont,
  }) {
    final appliedGoogleFont = googleFont ?? GoogleFonts.lato;

    return Text(
      this,
      style: appliedGoogleFont(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  Text getTextTitle({
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
    Color color = const Color.fromRGBO(0, 0, 0, 0.88),
    TextStyle Function({
      double? fontSize,
      FontWeight? fontWeight,
      Color? color,
    })? googleFont,
   }) {
    final appliedGoogleFont = googleFont ?? GoogleFonts.lato;

    return Text(
      this,
      style: appliedGoogleFont(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
