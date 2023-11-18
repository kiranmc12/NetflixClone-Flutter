import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/home/widgets/number_card.dart';
import 'package:netflixclone/presentation/home/widgets/number_title_card.dart';
import 'package:netflixclone/presentation/widgets/main_title_card.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MainTitleCard(title: "Released in the pat year"),
                  MainTitleCard(title: "Trending Now"),
                  NumberTitleCard(),
                  MainTitleCard(title: "Tense Dramas"),
                  MainTitleCard(title: " South Indian Cinema"),
                ],
              ),
            )));
  }
}
