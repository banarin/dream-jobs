import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchBar_Widget extends StatelessWidget {
  const SearchBar_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade300),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Ionicons.search)
        ),
      )
    );
  }
}
