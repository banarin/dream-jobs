import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class LoginButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const LoginButtonWidget({required this.text, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            color: Colors.black54,
          ),
          Text(
            "Login with $text",
            style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          const Text(" ")
        ],
      ),
    );
  }
}
