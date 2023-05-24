import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.image,
    required this.nickname,
    required this.content,
    required this.alignY,
  });

  final String image;
  final String nickname;
  final String content;
  final double alignY;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: WHITE,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB1B1B4).withOpacity(0.25),
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: Image.asset(
              "assets/images/$image",
              width: 140,
              height: 70,
              fit: BoxFit.cover,
              alignment: Alignment(0, alignY),
            ),
          ),
          SizedBox(height: 2),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: YELLOW800,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "5.0",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: W800,
                        color: GREY900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "$nickname 덕부름꾼",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: W700,
                    color: GREY900,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: W400,
                    color: GREY500,
                  ),
                ),
                SizedBox(height: 9),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
