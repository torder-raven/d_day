import 'package:d_day/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'common/font_style.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: SUNFLOWER_FONT,
        textTheme: getTextTheme()
      ),
      home: HomeScreen(),
    ),
  );
}