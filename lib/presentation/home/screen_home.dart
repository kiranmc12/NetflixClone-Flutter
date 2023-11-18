import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';

import 'package:netflixclone/presentation/home/widgets/number_title_card.dart';
import 'package:netflixclone/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ListView(
              children: [
                Container(
                  decoration:BoxDecoration(
                    image: DecorationImage(image: NetworkImage(kMainImage))
                  ) ,
                  width: double.infinity,
                  height: 600,
                ),
                MainTitleCard(title: "Released in the pat year"),
                kHeight,
                MainTitleCard(title: "Trending Now"),
                kHeight,
                NumberTitleCard(),
                MainTitleCard(title: "Tense Dramas"),
                kHeight,
                MainTitleCard(title: " South Indian Cinema"),
                kHeight
              ],
            )));
  }
}
