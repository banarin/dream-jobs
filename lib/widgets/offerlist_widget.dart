import 'package:flutter/material.dart';

class OfferListWidget extends StatefulWidget {
  const OfferListWidget({super.key});

  @override
  State<OfferListWidget> createState() => _OfferListWidgetState();
}

class _OfferListWidgetState extends State<OfferListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 320,
            width: 350,
            margin: const EdgeInsets.only(left: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey,
                image: const DecorationImage(
                    image: AssetImage("assets/images/profile1.jpg"),
                    fit: BoxFit.cover)),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(right: 8));
        },
        itemCount: 3);
  }
}
