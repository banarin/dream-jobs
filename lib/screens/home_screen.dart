import 'package:dream_job/widgets/new_container.dart';
import 'package:dream_job/widgets/profilelsite_Widget.dart';
import 'package:dream_job/widgets/seachbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Top-rated specialists",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 220,
                  child: ProfileListWidget(),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What's new?",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                NewContainer(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: bottomNavigationKey,
        buttonBackgroundColor: const Color(0XFFD98218),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 200),
        color: Colors.amberAccent.shade400,
        height: 60,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: const [
          Icon(
            Ionicons.home,
            color: Colors.white,
          ),
          Icon(
            Ionicons.stop,
            color: Colors.white,
          ),
          Icon(
            Ionicons.paper_plane,
            color: Colors.white,
          ),
          Icon(
            Ionicons.notifications,
            color: Colors.white,
          ),
          Icon(
            Ionicons.folder,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
