import 'package:flutter/material.dart';
import 'package:week5/components/sub_item_title.dart';

class SubItemList extends StatelessWidget {
  const SubItemList({
    super.key,
    required this.title,
    required this.items,
  });

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubItemTitle(title: title),
        const SizedBox(height: 13),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: Row(
            children: items,
          ),
        ),
      ],
    );
  }
}
