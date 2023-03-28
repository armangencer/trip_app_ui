import 'package:flutter/material.dart';
import 'package:trip_flutter_app/app/const/constant.dart';

class TabWidget extends StatelessWidget {
  TabWidget({super.key});

  final List<String> tabs = [
    'Tümü',
    'Yakındakiler',
    'Popüler',
    'En İyi Fırsatlar'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        tabs.length,
        (index) => Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.only(left: index == 0 ? 0 : 0, right: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: index == 0 ? const Color(0xFFE0E0E0) : white),
          child: Center(
            child: Text(
              tabs[index],
              style: medium.copyWith(
                  color: index == 0 ? Colors.black : grey, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
