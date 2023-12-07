import 'package:flutter/material.dart';

class AppStyles {
  static const BoxDecoration introScreenContainerDecoration = BoxDecoration(
    gradient: LinearGradient(

      // #2663FF, #34CEFF
      // #2663FF, #34CEFF
      colors: [ Color(0xFF34CEFF), Color(0xFF2663FF),],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp,
    ),
  );

  static const TextStyle screenHeadingTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle screenHeading2TextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subHeading1TextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle normalTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle smallTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );
}
