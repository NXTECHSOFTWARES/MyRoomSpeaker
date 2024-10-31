import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomWall extends StatelessWidget {
  const RoomWall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 430.h,
        decoration: const BoxDecoration(
           color: Color.fromRGBO(228, 228, 228, 1.0),
        ),
      ),
      Container(
          width: double.infinity,
          height: 140.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
              color: Colors.brown.shade700,
              border: Border(
              top: BorderSide(
                  width: 1.0.w,
              color: Colors.black,
                style: BorderStyle.solid
              ),),
              gradient: LinearGradient(
                  colors: const [
                    Color.fromRGBO(40, 40, 40, 1.0),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.001.w, 0.8.h])))
    ]);
  }
}
