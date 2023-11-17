import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  final String title;
  SearchTextTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      
      "Top Searches",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
