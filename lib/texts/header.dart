import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Now Playing",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: 'Times New Roman'),
    );
  }
}
