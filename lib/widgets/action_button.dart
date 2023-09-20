import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final String text;
  final bool load;
  const ActionButton({required this.text, required this.load, super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0XFFD98218),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: widget.load
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                widget.text,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
