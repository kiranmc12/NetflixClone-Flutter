import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixclone/api/apiconstants.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: Colors.red,
            image: DecorationImage(
                image: NetworkImage(ApiConstants.imagePath + imageList),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
