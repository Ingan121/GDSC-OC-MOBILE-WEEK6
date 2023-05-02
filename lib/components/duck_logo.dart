import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';

class DuckLogo extends StatelessWidget {
  const DuckLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "덕부름",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: "Dangam",
        color: PRIMARY_COLOR,
      ),
    );
  }
}
