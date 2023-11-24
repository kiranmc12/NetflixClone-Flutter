import 'package:flutter/material.dart';
import 'package:netflixclone/api/apiconstants.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/home/screen_home.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: topRated,
            builder:(context, value, child) {
                    return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1/1.4,
              children: List.generate(value.length, (index) {
                return  MainCard(imageUrl: value[index].posterPath,);
              }),
              
              );
              
            },
            
      
          ))
      ],
    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:  DecorationImage(
          image: NetworkImage(ApiConstants.imagePath+imageUrl),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)
      ),
     
    );
  }
}