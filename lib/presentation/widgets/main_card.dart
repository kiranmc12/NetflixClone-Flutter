import 'package:flutter/material.dart';
import 'package:netflixclone/api/apiconstants.dart';
import 'package:netflixclone/core/colors/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(ApiConstants.imagePath+image))),
    );
  }
}
