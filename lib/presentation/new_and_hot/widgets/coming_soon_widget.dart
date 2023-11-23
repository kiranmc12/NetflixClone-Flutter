import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/models/movies.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixclone/presentation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  final Movies movie;
  const CommingSoonWidget({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("FEB",
                  style: TextStyle(
                      color: Color.fromRGBO(158, 158, 158, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                image: movie.backDropPath,
              ),
              kHeight,
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      movie.title,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: -3,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.notifications_active,
                        title: "Remind me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth20
                    ],
                  )
                ],
              ),
              kHeight,
              Text("Coming on Friday"),
              kHeight,
              Text(
                movie.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              SizedBox(
                height: 150,
                child: Text(
                  movie.overView,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
