import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget {
  var onPressed;
  HeartIcon({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 60.0,
      onPressed: onPressed,
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}
