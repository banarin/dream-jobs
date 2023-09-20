import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List ImgProfile = [
      "assets/images/profile1.jpg",
      "assets/images/profile2.jpg",
      "assets/images/profile1.jpg",
      "assets/images/profile2.jpg",
    ];
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage(ImgProfile[index]),
                          fit: BoxFit.cover)),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        textAlign: TextAlign.start,
                        "Copa ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Dev mobile",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(right: 8));
        },
        itemCount: ImgProfile.length);
  }
}
