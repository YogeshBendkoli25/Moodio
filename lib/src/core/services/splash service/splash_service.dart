import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moodio/src/core/routes/names.dart';

class SplashService {
  Future<void> checkNextRoute(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.of(context)
        .pushNamedAndRemoveUntil(RoutesName.homePage, (route) => false);
  }
}
