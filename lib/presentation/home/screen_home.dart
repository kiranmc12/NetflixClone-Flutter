import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/home/widgets/background_card.dart';
import 'package:netflixclone/presentation/home/widgets/number_title_card.dart';
import 'package:netflixclone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
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
                      children: const [
                        BackgroundCard(),
                        MainTitleCard(title: "Released in the past year"),
                        kHeight,
                        MainTitleCard(title: "Trending Now"),
                        kHeight,
                        NumberTitleCard(),
                        MainTitleCard(title: "Tense Dramas"),
                        kHeight,
                        MainTitleCard(title: " South Indian Cinema"),
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
                                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJEqgLFHEKS88Zp7YCu8EzyD65Rw2huxmWrw&usqp=CAU",
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
                                      color: Colors.blue,
                                    ),
                                    kWidth
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  Text("TV Shows",
                                  style: kHomeTitleText,),
                                  Text("Movies",
                                  style: kHomeTitleText,),
                                  Text("Categories",
                                  style: kHomeTitleText,),
                                ],)
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
