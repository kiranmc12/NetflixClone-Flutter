import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/voHUmluYmKyleFkTu3lOXQG702u.jpg"))),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -22,
          child: StrokeText(
            text: "${index+1}",
            textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 125,
              color: Colors.black
            ),
            strokeColor: Colors.white,
            strokeWidth: 1.0,
            )
        )
      ],
    );
    
  }
}
