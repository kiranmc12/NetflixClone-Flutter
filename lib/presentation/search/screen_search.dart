import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Colors.grey.withOpacity(0.3),
              prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.white,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            kHeight,
            const Expanded(child: SearchResultWidget()),
          ],
        ),
      )),
    );
  }
}
