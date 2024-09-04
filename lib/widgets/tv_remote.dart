import 'package:flutter/material.dart';

class MyTvRemote extends StatefulWidget {
  const MyTvRemote({super.key});

  @override
  State<MyTvRemote> createState() => _MyTvRemoteState();
}

class _MyTvRemoteState extends State<MyTvRemote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(27, 27, 27, 1.0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        decoration: BoxDecoration(
          // color: const Color.fromRGBO(16, 16, 16, 1.0),
          gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 1.0),
                Color.fromRGBO(28, 28, 28, 1.0),
                Color.fromRGBO(48, 48, 48, 1.0),
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              transform: GradientRotation(7.5)),
          // color: const Color.fromRGBO(28, 28, 28, 1.0),
          borderRadius: BorderRadius.circular(5),
          border: const Border(
            left: BorderSide(
                width: 1.0,
                color: Color.fromRGBO(46, 46, 46, 1.0),
                style: BorderStyle.solid),
            right: BorderSide(
                width: 2.0,
                color: Color.fromRGBO(46, 46, 46, 1.0),
                style: BorderStyle.solid),
            top: BorderSide(
                width: 1.0,
                color: Color.fromRGBO(46, 46, 46, 1.0),
                style: BorderStyle.solid),
            bottom: BorderSide(
                width: 2.0,
                color: Color.fromRGBO(46, 46, 46, 1.0),
                style: BorderStyle.solid),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 5,
                  margin: const EdgeInsets.only(left: 5, top: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 0.5,
                          color: Colors.black,
                          style: BorderStyle.solid),
                      gradient: RadialGradient(
                        colors: [
                          Colors.red.shade800,
                          Colors.black,
                        ],
                        radius: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(0)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        border: Border.all(
                            width: 0.3,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        border: Border.all(
                            width: 0.3,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            /**
             * Middle big Button
             */
            Container(
              width: 30,
              height: 30,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(19, 19, 19, 1.0),
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1.0,
                      color: Colors.black,
                      style: BorderStyle.solid)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1.0,
                      color: Colors.black,
                      style: BorderStyle.solid),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child:
                          straightLine(2, 4, Color.fromRGBO(28, 28, 28, 1.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        straightLine(6, 2, Color.fromRGBO(28, 28, 28, 1.0)),
                        Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(18, 18, 18, 1.0),
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Colors.white12,
                            //       blurRadius: 2,
                            //       offset: Offset(0, 0),
                            //       spreadRadius: 2)
                            // ],
                          ),
                        ),
                        straightLine(6, 2, Color.fromRGBO(28, 28, 28, 1.0)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child:
                          straightLine(2, 4, Color.fromRGBO(28, 28, 28, 1.0)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            /**
             * Bottom buttons case
             */
            Container(
              width: 36,
              height: 23,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(2, 2, 2, 1.0),
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                    width: 1.0,
                    color: const Color.fromRGBO(23, 23, 23, 1.0),
                    style: BorderStyle.solid),
              ),
              child: Column(
                children: [
                  topSetOfButtons(),
                  straightLine(25, 1, const Color.fromRGBO(28, 28, 28, 1.0)),
                  middleSetOfButtons(),
                  straightLine(25, 1, const Color.fromRGBO(28, 28, 28, 1.0)),
                  bottomSetOfButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
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
