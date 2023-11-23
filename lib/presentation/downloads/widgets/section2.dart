import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/downloads/widgets/downloads_widget.dart';

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
