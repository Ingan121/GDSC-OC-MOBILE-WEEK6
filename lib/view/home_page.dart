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
          SizedBox(height: 15),
          Container(
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
          ),
          SizedBox(height: 30),
          Container(
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
          ),
          SizedBox(height: 15),
          Container(
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
          ),
          SizedBox(height: 30),
          SubItemTitle(title: "최근 등록된 심부름"),
          SizedBox(height: 13),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Row(
              children: [
                ErrandCard(
                  bgColor: ICEBLUE100,
                  color: ICEBLUE800,
                  mission: "팬싸 대리응모",
                  additionalMissions: 2,
                ),
                ErrandCard(
                  bgColor: PURPLE100,
                  color: PURPLE800,
                  mission: "행사 대리줄서기",
                  additionalMissions: 0,
                ),
                ErrandCard(
                  bgColor: PINK100,
                  color: PINK800,
                  mission: "행사 대리줄서기",
                  additionalMissions: 0,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          SubItemTitle(title: "최근 등록된 후기"),
          SizedBox(height: 13),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Row(
              children: [
                ReviewCard(
                  image: "le_chae.jpg",
                  nickname: "채원바라기",
                  content: "완전 잘해 주십니다!!",
                  alignY: 0,
                ),
                ReviewCard(
                  image: "ljh.jpg",
                  nickname: "이재현재",
                  content: "최고의 덕부름꾼!!",
                  alignY: -0.7,
                ),
                ReviewCard(
                  image: "leeknow.jpeg",
                  nickname: "리노리",
                  content: "완전 잘해 주십니다!!",
                  alignY: -0.7,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

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

class ErrandCard extends StatelessWidget {
  const ErrandCard({
    super.key,
    required this.bgColor,
    required this.color,
    required this.mission,
    required this.additionalMissions,
  });

  final Color bgColor;
  final Color color;
  final String mission;
  final int additionalMissions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            width: 1,
            color: GREY200,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: bgColor,
                  ),
                  child: Text(
                    "시급 1만원",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: W800,
                      color: color,
                    ),
                  ),
                ),
                SizedBox(height: 9.5),
                Text(
                  "서울 광진구",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: W800,
                    color: Color(0xFF1F1F21),
                  ),
                ),
                SizedBox(height: 7.5),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: GREY100,
                      ),
                      child: Text(
                        mission,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: W800,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                    ),
                    SizedBox(width: 6),
                    additionalMissions != 0
                        ? Container(
                            width: 26,
                            height: 26,
                            padding: EdgeInsets.fromLTRB(4, 6, 6, 5),
                            decoration: BoxDecoration(
                              color: PRIMARY_COLOR,
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "+$additionalMissions",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: W800,
                                    color: Color(0xFFF8F8F8),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(height: 9.5),
                Text(
                  "8/6 오후 8:00",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: W500,
                    color: GREY400,
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
