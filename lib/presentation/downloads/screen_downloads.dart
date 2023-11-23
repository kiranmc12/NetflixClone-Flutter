import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/downloads/widgets/section2.dart';
import 'package:netflixclone/presentation/downloads/widgets/section3.dart';
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

