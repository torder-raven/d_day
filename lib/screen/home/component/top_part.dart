import 'package:d_day/common/constant.dart';
import 'package:d_day/screen/home/component/heart_icon.dart';
import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  TopPart({
    required this.selectedDate,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final now = DateTime.now();

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            U_I,
            style: textTheme.headline1,
          ),
          Column(
            children: [
              Text(
                FIRST_DATE,
                style: textTheme.bodyText1,
              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
                style: textTheme.bodyText2,
              ),
            ],
          ),
          HeartIcon(onPressed: onPressed),
          Text(
            'D+${DateTime(
                  now.year,
                  now.month,
                  now.day,
                ).difference(selectedDate).inDays + 1}',
            style: textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
