import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aAngiE34BMFDTOXpjc04Lr8zsX1.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hXXhXaYBs1d6TcoUv78Wyuepu79.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: AppBarWidget(
              title: "Downloads",
            ),
          )),
      body: ListView(
        children: [
          Row(
            children: [
              kWidth,
              Icon(
                Icons.settings,
                color: kWhite,
              ),
              kWidth,
              Text("Smart Downloads")
            ],
          ),
          Text("Introducing Downloads for you"),
          Text(
              "We will download a personalized selection of movies and shows for you,so there is always something to watch on your device"),
          Container(
            width: size.width,
            height: size.width,
            color: kBlackColor,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: kGreyColor,
                    radius: size.width * 0.360,
                  ),
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  margin: EdgeInsets.only(left: 130,bottom: 50),
                  angle: 28,
                  size: Size(size.width* 0.4, size.width*0.58),
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: EdgeInsets.only(right: 130,bottom: 50),
                  angle: -28,
                   size: Size(size.width* 0.4, size.width*0.58)
                ),
                  DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: EdgeInsets.only(bottom:10),
                   size: Size(size.width* 0.44, size.width * 0.62)
                )
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: kButtonColoBlue,
            child: Text(
              "Set up",
              style: TextStyle(
                  color: kButtonColorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: kButtonColorWhite,
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin, 
    required this.size,
    this.radius=10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width ,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.red,
          image: DecorationImage(image: NetworkImage(imageList),fit: BoxFit.cover),
        ),
      ),
    );
  }
}
