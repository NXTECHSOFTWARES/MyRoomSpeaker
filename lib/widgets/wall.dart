import 'package:flutter/material.dart';

class RoomWall extends StatelessWidget {
  const RoomWall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          // color: Colors.grey.shade400,
          gradient: RadialGradient(
              colors: [
                Colors.white,
                Colors.grey.shade500,
                Colors.black,
              ],
              radius: 6,
              center: Alignment.topRight,
              stops: const [0.01, 0.1, 0.7]),
        ),
      ),
      Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
              color: Colors.brown.shade700,
              gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(40, 40, 40, 1.0),
                    Colors.grey.shade400,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.001, 0.8])))
    ]);
  }
}
