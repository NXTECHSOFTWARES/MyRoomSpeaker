import 'package:appflutter/widgets/screen.dart';
import 'package:flutter/material.dart';

class TV extends StatefulWidget {
  const TV({super.key});

  @override
  State<TV> createState() => _TVState();
}

class _TVState extends State<TV> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 160,
      margin: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade800,
          border: Border.all(width: 3.0, color: Colors.white12, style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: Container(
          width: 280,
         // height: 180,
          decoration: BoxDecoration(
            color: Colors.blue.shade800,
            border: const Border.symmetric(
                vertical: BorderSide(
              color: Colors.white,
              width: 2.5,
              style: BorderStyle.solid,
            )),
            borderRadius: const BorderRadius.all(
              Radius.circular(0),
            ),
          ),
          child: const Center(
            child: MyTvScreen(),
            ),
          ),
        ),
    );
  }
}
