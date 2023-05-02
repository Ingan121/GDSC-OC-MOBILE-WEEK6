import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';
import 'package:week5/components/duck_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WHITE,
        title: const DuckLogo(),
        centerTitle: false,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: GREY100,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: const [
                Text(
                  "공지",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: W800,
                    color: GREY900,
                    letterSpacing: -0.25,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "덕부름에 새로운 기능이 추가됐어요.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: W500,
                    color: GREY900,
                    letterSpacing: -0.25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
