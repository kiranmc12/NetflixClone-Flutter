import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/downloads/screen_downloads.dart';
import 'package:netflixclone/presentation/fast_laugh/fast_laught.dart';
import 'package:netflixclone/presentation/home/screen_home.dart';
import 'package:netflixclone/presentation/mainpage/widgets/bottom_nav.dart';
import 'package:netflixclone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflixclone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
     ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
     const ScreenSearch(),
     ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int value, _) {
            return _pages[value];
          }),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
