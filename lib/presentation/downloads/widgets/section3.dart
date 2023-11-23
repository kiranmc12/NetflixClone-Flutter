import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
            width: 350,
            child: MaterialButton(
              onPressed: () {},
                shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              color: kButtonColorBlue,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Set up",
                  style: TextStyle(
                      color: kButtonColorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          kHeight,
          SizedBox(
            width: 300,
            child: MaterialButton(
              onPressed: () {},
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              color: kButtonColorWhite,
              child: const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "See what you can download",
                  style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),

      ],
    );
  }
}