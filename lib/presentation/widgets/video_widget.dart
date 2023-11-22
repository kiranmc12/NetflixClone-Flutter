import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            kNewAandHotImage2,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  color: kWhite,
                  size: 20,
                )),
          ),
        ),
      ],
    );
  }
}