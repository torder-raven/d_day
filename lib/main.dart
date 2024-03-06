import 'package:d_day/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "sunflower", // 기본값으로 설정함
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontFamily: "parisienne",
            fontSize: 80.0,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge:TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const HomeScreen(),
    ),
  );
}
