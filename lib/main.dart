import 'package:d_day/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'common/font_style.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: sunFlowerFont,
        textTheme: TextTheme(
          headlineLarge: headlineLarge,
          headlineMedium: headlineMedium,
          bodyLarge: bodyLarge,
          bodyMedium: bodyMedium
        ),
      ),
      home: HomeScreen(),
    ),
  );
}