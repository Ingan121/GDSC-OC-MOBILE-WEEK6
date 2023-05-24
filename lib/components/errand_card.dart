import 'package:flutter/material.dart';
import 'package:week5/common/const/colors.dart';
import 'package:week5/common/const/text.dart';

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
