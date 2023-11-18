import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child:Column(
        children: [
          MainTitleCard(title:"Released in the pat year" ),
          MainTitleCard(title:"Trending Now" ),

        ],
      )
    ));
  }
}


