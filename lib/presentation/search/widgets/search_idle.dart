import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/api/apiconstants.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/models/movies.dart';
import 'package:netflixclone/presentation/home/screen_home.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';



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
          child: ValueListenableBuilder(
            valueListenable: topRated,
            builder: (context, value, child) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>  TopSearchItemTile(movie: value[index],),
                  separatorBuilder: (context, index) => kHeight20,
                  itemCount: 10);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
   TopSearchItemTile({super.key, required this.movie});

  final Movies movie; 

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 95,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(ApiConstants.imagePath+movie.backDropPath))),
        ),
        kWidth,
         Expanded(
          child: Text(
            movie.title,
            style: TextStyle(
                color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kWhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhite,
            ),
          ),
        )
      ],
    );
  }
}
