import 'package:d_day/constant/constants.dart';
import 'package:d_day/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomeScreen(),
    theme: ThemeData(
      fontFamily: FontConstants.sunflower,
      textTheme: const TextTheme(

        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 80.0,
          fontWeight: FontWeight.w700,
          fontFamily: FontConstants.parisienne
        ),

        headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w700,
        ),

        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.w700,
        ),

        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      )
    ),
  ));
}
