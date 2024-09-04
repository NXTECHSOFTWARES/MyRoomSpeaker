import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText(
      {super.key,
      required,
      required this.text,
      required this.color,
      required this.font,
      required this.fw,
      required this.size});

  final String text;
  final Color? color;
  final String? font;
  final FontWeight? fw;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: font,
        fontWeight: fw,
        fontSize: size,
      ),
    );
  }
}
