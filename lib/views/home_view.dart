import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/constants.dart';

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
        title: SvgPicture.asset(logoSvgAsset),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SvgPicture.asset(addSvgAsset),
          ),
          SvgPicture.asset(heartSvgAsset),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SvgPicture.asset(messengerSvgAsset),
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
                SvgPicture.asset(moreSvgAsset),
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
                    SvgPicture.asset(heartSvgAsset),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SvgPicture.asset(commentSvgAsset),
                    ),
                    SvgPicture.asset(shareSvgAsset),
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
