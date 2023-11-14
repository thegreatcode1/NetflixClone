import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/home/widgets/main_card.dart';
import 'package:netflix/presentation/home/widgets/title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainText(title: "Released in the past year"),
            LimitedBox(
              maxHeight: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => const MainCard()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

