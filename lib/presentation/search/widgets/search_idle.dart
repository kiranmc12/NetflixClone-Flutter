import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/voHUmluYmKyleFkTu3lOXQG702u.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const SearchTextTitle(title: 'Top Searches'),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder:(context, index) =>const TopSearchItemTile() ,
             separatorBuilder:(context, index) => kHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return Row(
      children: [
           Container(
            width: screenWidth *0.4,
            height: 95,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl))
            ),
           ),
           kWidth,
           const Expanded(child: Text(
            "Movie Name",
           style:TextStyle(
            color: kWhite,
            fontWeight: FontWeight.bold,
            fontSize: 16
            ),
            ),
            ),
            const CircleAvatar(
              backgroundColor: kWhite,
              radius: 25,
              child: CircleAvatar(
                backgroundColor: kBlackColor,
                radius: 23,
                child: Icon(CupertinoIcons.play_fill,color: kWhite,),
              ),
            )
            
      ],
    );
  }
}