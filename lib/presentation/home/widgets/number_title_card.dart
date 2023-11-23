import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/models/movies.dart';
import 'package:netflixclone/presentation/home/widgets/number_card.dart';
import 'package:netflixclone/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  final ValueNotifier<List<Movies>> listNotifier;
  const NumberTitleCard({
    super.key,
    required this.listNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Top 10 Tv shows in India Today"),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ValueListenableBuilder(
            valueListenable: listNotifier,
            builder: (context, value, child) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  var data = value[index];
                  return NumberCard(image: data.posterPath, index: index);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
