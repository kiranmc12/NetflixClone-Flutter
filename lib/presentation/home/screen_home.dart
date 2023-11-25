import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/api/api.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/models/movies.dart';
import 'package:netflixclone/presentation/home/widgets/background_card.dart';
import 'package:netflixclone/presentation/home/widgets/number_title_card.dart';
import 'package:netflixclone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
ValueNotifier<List<Movies>> trendingNow = ValueNotifier([]);
ValueNotifier<List<Movies>> topRated = ValueNotifier([]);
ValueNotifier<List<Movies>> top10TvShows = ValueNotifier([]);
int randomIndex = 0;

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  fetchDatas() async {
    trendingNow.value = await Api().getTrendingMovies();
    topRated.value = await Api().getTopRatedMovies();
    top10TvShows.value = await Api().getTop10TvShows();
    final random = Random();
    randomIndex = random.nextInt(10);
  }

  @override
  Widget build(BuildContext context) {
    fetchDatas();
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;

                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        FutureBuilder(
                          future: Api().getTrendingMovies(),
                          builder: (context, snapshot) => snapshot.hasData
                              ? BackgroundCard(
                                  imageUrl:
                                      snapshot.data![randomIndex].posterPath)
                              : const SizedBox(
                                  height: 700,
                                  width: double.infinity,
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                        ),
                        MainTitleCard(
                            title: "Top Rated", listNotifier: topRated),
                        kHeight,
                        MainTitleCard(
                            title: "Trending Now", listNotifier: trendingNow),
                        kHeight,
                        NumberTitleCard(
                          listNotifier: top10TvShows,
                        ),
                        MainTitleCard(
                            title: "Tense Dramas", listNotifier: topRated),
                        kHeight,
                        MainTitleCard(
                            title: " South Indian Cinema",
                            listNotifier: trendingNow),
                        kHeight
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 80,
                            color: Colors.black.withOpacity(0.1),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJEqgLFHEKS88Zp7YCu8EzyD65Rw2huxmWrw&usqp=CAU",
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    kWidth,
                                    kWidth,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  kAvatarIcon))),
                                    ),
                                    kWidth
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "TV Shows",
                                      style: kHomeTitleText,
                                    ),
                                    Text(
                                      "Movies",
                                      style: kHomeTitleText,
                                    ),
                                    Text(
                                      "Categories",
                                      style: kHomeTitleText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        : kHeight
                  ],
                ),
              )),
        );
      },
    ));
  }
}
