import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is News feed'),
        //  automaticallyImplyLeading: false,
        // this will be desable the back arrow in appbar
        /*
       
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(); // it will delete the page and move back
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        //it will be back to the home screen

*/
      ),
    );
  }
}
