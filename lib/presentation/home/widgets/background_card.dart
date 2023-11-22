import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: NetworkImage(kMainImage))),
                      width: double.infinity,
                      height: 600,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:10 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CustomButtonWidget(
                              title:"My List" ,
                              icon: Icons.add,
                            ),
                            _playButton(),
                            const CustomButtonWidget(
                              icon: Icons.info,
                               title: "Info")
                          ],
                        ),
                      ),
                    )
                  ],
                );
  }
    TextButton _playButton() {
    return TextButton.icon(
    
      onPressed: () {},
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhite)),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold,
           color: kBlackColor),
        ),
      ),
    );
  }
}