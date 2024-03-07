import 'package:flutter/material.dart';

const SUNFLOWER_FONT = 'sunflower';
const PARISIENNE_FONT = 'parisienne';

const headlineLarge = TextStyle(
  color: Colors.white,
  fontFamily: PARISIENNE_FONT,
  fontSize: 80.0,
);

const headlineMedium = TextStyle(
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.w700,
);

const bodyLarge = TextStyle(
  color: Colors.white,
  fontSize: 30.0,
);

const bodyMedium = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
);

TextTheme getTextTheme() {
  return TextTheme(
      headlineLarge: headlineLarge,
      headlineMedium: headlineMedium,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium
  );
}