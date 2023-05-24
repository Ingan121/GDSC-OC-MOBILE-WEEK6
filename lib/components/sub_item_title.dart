import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';

class SubItemTitle extends StatelessWidget {
  const SubItemTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: W800,
              color: GREY900,
            ),
          ),
          Spacer(),
          Text(
            "더보기",
            style: TextStyle(
              fontSize: 13,
              fontWeight: W500,
              color: GREY400,
            ),
          ),
          SizedBox(width: 6),
          Icon(
            Icons.arrow_forward_ios,
            color: GREY400,
            size: 13,
          ),
        ],
      ),
    );
  }
}
