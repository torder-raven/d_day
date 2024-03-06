import 'package:flutter/cupertino.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);
  final imageAsset = 'asset/img/middle_image.png';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        imageAsset,
      ),
    );
  }
}