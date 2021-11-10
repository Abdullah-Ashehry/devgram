import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Icon(Icons.add_box_outlined),
          ),
          Icon(Icons.icecream_outlined),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Icon(Icons.message),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/fozan-kh.appspot.com/o/watermelon.png?alt=media&token=0c4c219d-4376-432b-a3b7-598e42803bb9",
                  height: 30,
                ),
                SizedBox(width: 10),
                Text('Ruffles'),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Image.network(
            "https://assets2.razerzone.com/images/pnx.assets/a1f5964573ff5aff38ade71ce3a97d22/go-green-hero-mobile-v2.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.icecream_outlined),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                    Icon(Icons.send_rounded),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('100 Likes'),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Developer ',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
                // Text(
                //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
