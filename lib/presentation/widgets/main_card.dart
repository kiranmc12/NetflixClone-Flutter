import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dzBtMocZuJbjLOXvrl4zGYigDzh.jpg"))),
    );
  }
}