import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/views/home_view.dart';
import 'package:instagram_clone/views/profile_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  Widget homeView;
  Widget profileView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() => currentIndex = value),
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(homeSvgAsset), label: 'home'),
          BottomNavigationBarItem(
            icon: Image.network(
              "https://firebasestorage.googleapis.com/v0/b/fozan-kh.appspot.com/o/watermelon.png?alt=media&token=0c4c219d-4376-432b-a3b7-598e42803bb9",
              height: 30,
            ),
            label: 'profile',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeView(),
          ProfileView(),
        ],
      ),
    );
  }
}
