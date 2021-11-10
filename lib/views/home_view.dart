import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/components/post.dart';
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
        title: SvgPicture.asset(kLogoSvgAsset),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SvgPicture.asset(kAddSvgAsset),
          ),
          SvgPicture.asset(kHeartSvgAsset),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SvgPicture.asset(kMessengerSvgAsset),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}
