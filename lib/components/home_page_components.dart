import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';

class HowToUseButton extends StatelessWidget {
  const HowToUseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF7FFE7),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            margin: EdgeInsets.only(right: 17),
            padding: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: Color(0xFFDBFFAC),
              shape: BoxShape.circle,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tip!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: W800,
                    color: GREY900,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "덕부름 이용 방법",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: W800,
                  color: GREY900,
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "덕부름의 이용 방법을 알아보세요!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: W500,
                      color: GREY700,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: GREY400,
                    size: 13,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: GREY900,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "심부름 신청하러 가기",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: W800,
                  color: WHITE,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "덕질 관련 심부름을 신청해 보세요!",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: W500,
                  color: WHITE,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: GREY700,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: WHITE,
            ),
          ),
        ],
      ),
    );
  }
}

class EventNoticeCard extends StatelessWidget {
  const EventNoticeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset("assets/images/le.png"),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 12,
              bottom: 55,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EVENT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: W300,
                    color: WHITE,
                  ),
                ),
                Text(
                  "LE SSERAFIM",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: W800,
                    color: WHITE,
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

class NoticeCard extends StatelessWidget {
  const NoticeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
