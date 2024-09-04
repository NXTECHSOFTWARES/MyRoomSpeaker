import 'package:flutter/material.dart';

class MyTvScreen extends StatefulWidget {
  const MyTvScreen({super.key});

  @override
  State<MyTvScreen> createState() => _MyTvScreenState();
}

class _MyTvScreenState extends State<MyTvScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 260,
        decoration: const BoxDecoration(
        color: Colors.black,
        // boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0,0), spreadRadius: 3, blurRadius: 6)],
        border: Border.symmetric(
        vertical: BorderSide(
        color: Colors.white,
        width: 3.0,
        style: BorderStyle.solid),
    ),
    ));
  }
}
