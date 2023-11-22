import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        kWidth,
         Text(title,
        style: const TextStyle(
          fontSize: 25,
          fontWeight:FontWeight.bold
           ),),
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
    );
  }
}
