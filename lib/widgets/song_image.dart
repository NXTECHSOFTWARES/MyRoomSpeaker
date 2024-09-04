import 'package:flutter/material.dart';

class NowPlayingSongImage extends StatelessWidget {
  const NowPlayingSongImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(25, 25, 25, 1.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
              width: 1.5, color: Colors.blue, style: BorderStyle.solid)),
    );
  }
}
