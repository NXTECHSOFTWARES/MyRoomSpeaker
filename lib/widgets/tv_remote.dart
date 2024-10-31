import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTvRemote extends StatefulWidget {
  const MyTvRemote({super.key});

  @override
  State<MyTvRemote> createState() => _MyTvRemoteState();
}

class _MyTvRemoteState extends State<MyTvRemote> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 41.w,
          height: 80.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(57, 57, 57, 1.0),
              borderRadius: BorderRadius.circular(4.r),
            border: Border.all(
              width: 0.2.w,
              color: Colors.black,
              style: BorderStyle.solid
            )
          ),
        ),
        Container(
          width: 39.w,
          height: 80.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(3.r),
          ),
          child:
              /**
           * Inner Container
           */
              Center(
            child: Container(
              width: 35.w,
              height: 76.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(198, 198, 198, 1.0),
                borderRadius: BorderRadius.circular(2.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(1.0.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Container()),
                        customCircle(
                          3,
                          3,
                          RadialGradient(colors: const [
                            Color.fromRGBO(255, 38, 38, 1.0),
                            Colors.black,
                          ], radius: 0.6.r),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    /**
                     * Top buttons
                     */
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                      child: Column(
                        children: [
                          Container(
                            width: 29.w,
                            height: 4.h,
                            padding: EdgeInsets.all(1.0.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.r),
                              color: const Color.fromRGBO(29, 29, 29, 1.0),
                            ),
                            child: Center(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (BuildContext context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(left: 4.5.w),
                                      child: straightLine(0.08, 2,
                                          const Color.fromRGBO(255, 255, 255, 1.0)),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          /**
                           * Inner buttons
                           */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customCircle(
                                4,
                                4,
                                RadialGradient(colors: const [
                                  Color.fromRGBO(61, 61, 61, 1.0),
                                  Colors.black,
                                ], radius: 0.7.r),
                              ),
                              Container(
                                width: 10.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(29, 29, 29, 1.0),
                                    borderRadius: BorderRadius.circular(0.5.r)),
                              ),
                              customCircle(
                                4,
                                4,
                                RadialGradient(colors: const [
                                  Color.fromRGBO(61, 61, 61, 1.0),
                                  Colors.black,
                                ], radius: 0.7.r),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          /**
                           * Middle big button
                           */
                          Container(
                            width: 26.w,
                            height: 26.h,
                            padding: EdgeInsets.all(2.0.w),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(41, 41, 41, 1.0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 0.3.w,
                                  color: Colors.black,
                                  style: BorderStyle.solid),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: straightLine(
                                        24, 0.3, const Color.fromRGBO(28, 28, 28, 1.0))),
                                Align(
                                  alignment: Alignment.center,
                                  child: RotatedBox(
                                      quarterTurns: 1,
                                      child: straightLine(24, 0.3,
                                          const Color.fromRGBO(28, 28, 28, 1.0))),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 14.w,
                                    height: 14.h,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(27, 27, 27, 1.0),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0.w, 0.w),
                                              blurRadius: 4.r,
                                              spreadRadius: 2.r),
                                        ]),
                                    child: Center(
                                      child: Container(
                                        width: 4.w,
                                        height: 4.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 0.1.w,
                                              color: Colors.black,
                                              style: BorderStyle.solid),
                                          shape: BoxShape.circle,
                                          gradient: const RadialGradient(colors: [
                                            Color.fromRGBO(38, 38, 38, 1.0),
                                            Color.fromRGBO(15, 15, 15, 1.0),
                                          ], radius: 0.6),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          /**
                           * bottom two buttons
                           */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customCircle(
                                4,
                                4,
                                RadialGradient(colors: const [
                                  Color.fromRGBO(61, 61, 61, 1.0),
                                  Colors.black,
                                ], radius: 0.7.r),
                              ),
                              customCircle(
                                4,
                                4,
                                RadialGradient(colors: const [
                                  Color.fromRGBO(61, 61, 61, 1.0),
                                  Colors.black,
                                ], radius: 0.7.r),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    /**
                     * Bottom buttons
                     */
                    Container(
                      width: 31.w,
                      height: 18.h,
                      padding: EdgeInsets.all(1.5.w),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(28, 28, 28, 1.0),
                        borderRadius: BorderRadius.circular(3.r),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 4.h,
                            left: 1.5.w,
                            child: Column(
                              children: [
                                straightLine(
                                    24, 0.3, const Color.fromRGBO(90, 90, 90, 1.0)),
                                SizedBox(
                                  height: 7.h,
                                ),
                                straightLine(
                                    24, 0.3, const Color.fromRGBO(90, 90, 90, 1.0)),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0.h,
                            right: 8.5.w,
                            child: Row(
                              children: [
                                RotatedBox(
                                  quarterTurns: 1,
                                  child: straightLine(24, 0.3,
                                      const Color.fromRGBO(90, 90, 90, 1.0)),
                                ),
                                SizedBox(
                                  width: 11.h,
                                ),
                                RotatedBox(
                                  quarterTurns: 1,
                                  child: straightLine(24, 0.3,
                                      const Color.fromRGBO(90, 90, 90, 1.0)),
                                ),
                              ],
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: RotatedBox(
                          //       quarterTurns: 1,
                          //       child: straightLine(24, 0.3,
                          //           const Color.fromRGBO(90, 90, 90, 1.0))),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }

  Widget topSetOfButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0, left: 2.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1.0, right: 2),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
      ],
    );
  }

  Widget straightLine(double width, double height, Color color) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.white12,
          //       blurRadius: 2,
          //       offset: Offset(0, 0),
          //       spreadRadius: 2)
          // ],
        ));
  }

  Widget middleSetOfButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 1.0, bottom: 1.0, left: 2.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0, bottom: 1.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0, bottom: 1.0, right: 2.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
      ],
    );
  }

  Widget customCircle(double width, double height, Gradient gradient) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: gradient,
        border: Border.all(
            width: 0.5.w, color: Colors.black54, style: BorderStyle.solid),
      ),
    );
  }

  Widget bottomSetOfButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
        straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: straightLine(2, 4, const Color.fromRGBO(28, 28, 28, 1.0)),
        ),
      ],
    );
  }
}
