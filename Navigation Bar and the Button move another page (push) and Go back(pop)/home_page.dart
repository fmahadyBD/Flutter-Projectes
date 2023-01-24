import 'package:flutter/material.dart';
import 'package:flutter_application_3/news_feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const NewsFeed();
              },
            ),
          );
        },
        child: const Text('home page'),
      ),
    );
  }
}
