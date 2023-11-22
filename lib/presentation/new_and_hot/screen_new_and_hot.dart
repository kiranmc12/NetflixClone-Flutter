import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/colors/constants.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixclone/presentation/new_and_hot/widgets/coming_soon_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: AppBar(
              title: const Text(
                "New and Hot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                kWidth,
                kWidth,
                Container(
                  width: 30,
                  height: 20,
                  color: Colors.blue,
                ),
                kWidth
              ],
              bottom: TabBar(
                padding: const EdgeInsets.all(10),
                isScrollable: true,
                labelColor: kBlackColor,
                unselectedLabelColor: kWhite,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhite, borderRadius: kRadius30),
                tabs: const [
                  Tab(
                    text: "🍿 Comming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  )
                ],
              ),
            )),
        body: TabBarView(children: [
          _buildComminSoon(),
          _buildEveryonesWatching(),
        ]),
      ),
    );
  }

  Widget _buildComminSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const CommingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatching() {
    return const SizedBox();
  }
}
