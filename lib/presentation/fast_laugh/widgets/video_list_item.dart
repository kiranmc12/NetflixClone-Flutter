import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //leftside
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                       icon: const Icon(
                        Icons.volume_off,
                        color: kWhite,
                        size: 30, 
                        )),
                ),
                //right side

                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hXXhXaYBs1d6TcoUv78Wyuepu79.jpg'),
                      ),
                    ),
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionsWidget(icon: Icons.add, title: 'My List'),
                    VideoActionsWidget(icon: Icons.share, title: 'Share'),
                    VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,
          color: kWhite,
          size: 30,),
          Text(title,
          style: const TextStyle(
            color: kWhite,
            fontSize:16 
            ),)
        ],
      ),
    );
  }
}
