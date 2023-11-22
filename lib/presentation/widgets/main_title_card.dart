import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/widgets/main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) =>  const MainCard()),
          ),
        )
     
      ],
    );
  }
}

