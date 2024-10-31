import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomMenuIcon extends StatelessWidget {
  const MyCustomMenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),  children: [
      Container(
        width: 13.w,
        height: 13.h,
      )
    ],);
  }
}
