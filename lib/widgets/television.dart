import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TV extends StatefulWidget {
  const TV({super.key});

  @override
  State<TV> createState() => _TVState();
}

class _TVState extends State<TV> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 150.h,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(24, 22, 22, 1.0),
        border: Border.all(
          width: 1.0.w,
          color: Colors.white,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Center(
        child: Container(
          width: 270.w,
          height: 135.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(181, 153, 8, 1.0),
              border: Border.all(
                width: 1.0.w,
                color: Colors.black,
                style: BorderStyle.solid,
              )),
          child: Center(
            child: Container(
              width: 250.w,
              height: 135.h,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL0VCRV_TqoYFVynE2fWYfRGgM4pXrbUBzXA&s",
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    width: 1.0.w,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  )),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0.w, sigmaY: 5.0.h),
                  child: Center(
                    child: Container(
                      width: 250.w,
                      height: 135.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL0VCRV_TqoYFVynE2fWYfRGgM4pXrbUBzXA&s",
                          ),
                          fit: BoxFit.contain,
                        ),
                          border: Border(
                            left: BorderSide(
                            width: 1.0.w,
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          right: BorderSide(
                            width: 1.0.w,
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    //   Container(
    //   width: 310,
    //   height: 160,
    //   margin: const EdgeInsets.symmetric(vertical: 50),
    //   decoration: BoxDecoration(
    //       color: Colors.blueGrey.shade800,
    //       border: Border.all(width: 3.0, color: Colors.white12, style: BorderStyle.solid),
    //       borderRadius: const BorderRadius.all(Radius.circular(5))),
    //   child: Center(
    //     child: Container(
    //       width: 280,
    //      // height: 180,
    //       decoration: BoxDecoration(
    //         color: Colors.blue.shade800,
    //         border: const Border.symmetric(
    //             vertical: BorderSide(
    //           color: Colors.white,
    //           width: 2.5,
    //           style: BorderStyle.solid,
    //         )),
    //         borderRadius: const BorderRadius.all(
    //           Radius.circular(0),
    //         ),
    //       ),
    //       child: const Center(
    //         child: MyTvScreen(),
    //         ),
    //       ),
    //     ),
    // );
  }
}
