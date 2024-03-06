import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime reviewedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            _ReviewDay(reviewedDay: reviewedDay, onPressed: onDateTexPressed),
      ),
    );
  }

  void onDateTexPressed() {
    final DateTime now = DateTime.now();

    // dialog
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300.0,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              minimumDate: DateTime(
                now.year,
                now.month,
                now.day - 7,
              ),
              initialDateTime: DateTime(
                now.year,
                now.month,
                now.day - 7,
              ),
              maximumDate: DateTime(
                now.year,
                now.month,
                now.day,
              ),
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  reviewedDay = date;
                });
              },
            ),
          ),
        );
      },
    );
  }
}

class _ReviewDay extends StatelessWidget {
  final DateTime reviewedDay;
  final VoidCallback onPressed;

  _ReviewDay({
    required this.reviewedDay,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '날짜',
          style: TextStyle(
              fontFamily: 'Scaffold',
              fontSize: 22,
              fontWeight: FontWeight.w900),
        ),
        Container(
          child: TextButton(
            child: Text(
              '날짜 선택',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
