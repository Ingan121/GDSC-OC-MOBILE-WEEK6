import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';
import 'package:week5/components/duck_logo.dart';
import 'package:week5/components/errand_card.dart';
import 'package:week5/components/home_page_components.dart';
import 'package:week5/components/review_card.dart';
import 'package:week5/components/sub_item_list.dart';

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
        children: const [
          NoticeCard(),
          SizedBox(height: 15),
          EventNoticeCard(),
          SizedBox(height: 30),
          ApplyButton(),
          SizedBox(height: 15),
          HowToUseButton(),
          SizedBox(height: 30),
          SubItemList(
            title: "최근 등록된 심부름",
            items: [
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
          SizedBox(height: 30),
          SubItemList(
            title: "최근 등록된 후기",
            items: [
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
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
