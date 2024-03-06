import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime now = DateTime.now();
  DateTime firstDay =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(
              firstDay: firstDay,
              onWorkPressed: onWorkPressed,
            ),
            _CoupleImage()
          ],
        ),
      ),
    );
  }

  void onWorkPressed() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (dateTime) {
                setState(() {
                  firstDay = dateTime;
                });
              },
              initialDateTime: DateTime(now.year, now.month, now.day),
              maximumDate: now,
            ),
          ),
        );
      },
      barrierDismissible: true,
    );
  }
}

class _DDay extends StatelessWidget {
  final DateTime firstDay;
  final GestureTapCallback onWorkPressed;

  _DDay({required this.firstDay, required this.onWorkPressed});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        Text(
          "Work",
          style: textTheme.displayLarge,
        ),
        const SizedBox(
          height: 16.0,
        ),
        Column(
          children: [
            Text(
              "나의 근무 일수",
              style: textTheme.bodyLarge,
            ),
            Text(
              "${firstDay.year}.${firstDay.month}.${firstDay.day}",
              style: textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        IconButton(
            iconSize: 60.0,
            onPressed: onWorkPressed,
            icon: const Icon(
              Icons.work,
              color: Colors.black,
            )),
        Text(
          "D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}",
          style: textTheme.headlineLarge,
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'asset/img/middle_image.png',
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
