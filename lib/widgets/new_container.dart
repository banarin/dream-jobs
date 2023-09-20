import 'package:dream_job/widgets/userpost_widget.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  final String personTitre;
  final String postDate;
  final String postText;
  final String postUrlImage;

  const NewsContainer(
      {required this.imagePath,
      required this.name,
      required this.personTitre,
      required this.postDate,
      required this.postText,
      required this.postUrlImage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          UserPost_Widget(
            imagePath: imagePath,
            name: name,
            personTitre: personTitre,
            postDate: postDate,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            postText,
            style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:  DecorationImage(
                    image: AssetImage(postUrlImage),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
