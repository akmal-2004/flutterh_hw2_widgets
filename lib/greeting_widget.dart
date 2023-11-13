import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String greetingText;

  const GreetingWidget({super.key, required this.greetingText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      greetingText,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}