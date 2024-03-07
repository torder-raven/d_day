import 'package:d_day/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/strings.dart';

class HomeScreen extends StatefulWidget {
  final DateTime now = DateTime.now();

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime selectedDate = DateTime(
    widget.now.year,
    widget.now.month,
    widget.now.day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              _Days(
                now: widget.now,
                selectedDate: selectedDate,
                onHeartPressed: onHeartPressed,
              ),
              _CoupleImage(),
            ],
          ),
        ),
      ),
    );
  }

  void onHeartPressed() {
    // dialog
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300.0,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: selectedDate,
              maximumDate: widget.now,
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  selectedDate = date;
                });
              },
            ),
          ),
        );
      },
      barrierDismissible: true,
    );
  }
}

class _Days extends StatelessWidget {
  final DateTime now;
  final DateTime selectedDate;
  final VoidCallback onHeartPressed;

  const _Days({
    required this.now,
    required this.selectedDate,
    required this.onHeartPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            Strings.TITLE_U_AND_I,
            style: textTheme.displayLarge,
          ),
          Column(
            children: [
              Text(
                Strings.TITLE_FIRST_MEET_DAY,
                style: textTheme.bodyLarge,
              ),
              Text(
                "${selectedDate.year}.${selectedDate.month}.${selectedDate.day}",
                style: textTheme.bodyMedium,
              ),
            ],
          ),
          IconButton(
            onPressed: onHeartPressed,
            iconSize: 60.0,
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Text(
            "${Strings.TITLE_D_DAY}${now.difference(selectedDate).inDays + 1}",
            style: textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}

class _CoupleImage extends StatelessWidget {
  const _CoupleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset("middle_image".png()),
    );
  }
}
