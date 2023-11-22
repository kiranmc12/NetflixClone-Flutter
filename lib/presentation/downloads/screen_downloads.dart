import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList= [
          const _SmartDownloads(),
          Section2(),
          const Section3()
         
        
        ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: AppBarWidget(
              title: "Downloads",
            ),
          )),
      body:ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder:(context, index)=>_widgetList[index], 
        separatorBuilder:(context, index) =>const SizedBox(height: 30,),
       itemCount: _widgetList.length
       )
    );
  }
}

class Section2 extends StatelessWidget {
   Section2({super.key});
     final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aAngiE34BMFDTOXpjc04Lr8zsX1.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hXXhXaYBs1d6TcoUv78Wyuepu79.jpg"
  ];

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return Column(
      children: [

         const Text(
            "Introducing Downloads for you",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.bold,
               fontSize: 21),
          ),
          kHeight,
          const Text(
            "We will download a personalized selection of\nmovies and shows for you,so there's\nalways something to watch on your\ndevice",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    radius: size.width * 0.42,
                  ),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: const EdgeInsets.only(left: 165,top: 50 ),
                  angle: 28,
                  size: Size(size.width * 0.4, size.width * 0.58),
                ),
                DownloadsImageWidget(
                    imageList: imageList[1],
                    margin: const EdgeInsets.only(right: 165,top: 50),
                    angle: -28,
                    size: Size(size.width * 0.4, size.width * 0.58)),
                DownloadsImageWidget(
                    imageList: imageList[0],
                    margin: const EdgeInsets.only(bottom: 50,top: 50),
                    size: Size(size.width * 0.44, size.width * 0.66))
              ],
            ),
          ),

      ],
    );
  }
}


class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
            width: 350,
            child: MaterialButton(
              onPressed: () {},
                shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              color: kButtonColorBlue,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Set up",
                  style: TextStyle(
                      color: kButtonColorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          kHeight,
          SizedBox(
            width: 300,
            child: MaterialButton(
              onPressed: () {},
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              color: kButtonColorWhite,
              child: const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "See what you can download",
                  style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),

      ],
    );
  }
}
class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 7),
      child: Row(
        children: [
          Icon(
            
            Icons.settings,
            color: kWhite,
            size: 30,
          ),
          kWidth,
          Text("Smart Downloads")
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
                image: NetworkImage(imageList), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
