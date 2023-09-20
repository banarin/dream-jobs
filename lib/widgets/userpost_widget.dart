import 'package:flutter/material.dart';

class UserPost_Widget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String personTitre;
  final String postDate;

  const UserPost_Widget({required this.imagePath,required this.name,required this.personTitre,required this.postDate, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 10,
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              personTitre,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
         Text(
         postDate,
          style: TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
