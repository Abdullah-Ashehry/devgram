import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(Icons.add_box_outlined),
          Icon(Icons.icecream_outlined),
          Icon(Icons.message),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/fozan-kh.appspot.com/o/watermelon.png?alt=media&token=0c4c219d-4376-432b-a3b7-598e42803bb9",
                height: 30,
              ),
              Text('Ruffles'),
            ],
          ),
          Image.network(
            "https://firebasestorage.googleapis.com/v0/b/fozan-kh.appspot.com/o/watermelon.png?alt=media&token=0c4c219d-4376-432b-a3b7-598e42803bb9",
          ),
          Row(
            children: [
              Icon(Icons.icecream_outlined),
              Icon(Icons.chat_bubble_outline),
            ],
          ),
          Text('100 Likes')
        ],
      ),
    );
  }
}
