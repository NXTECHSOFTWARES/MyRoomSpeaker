import 'package:flutter/material.dart';

import '../pages/home.dart';

class MyBluetoothSpeaker extends StatefulWidget {
  const MyBluetoothSpeaker({super.key});

  @override
  State<MyBluetoothSpeaker> createState() => _MyBluetoothSpeakerState();
}

class _MyBluetoothSpeakerState extends State<MyBluetoothSpeaker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 280,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Stack(
        children: [

          /**
           * Back/right side
           **/
          Positioned(
            left: 60,
            child: Container(
              width: 130,
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(30, 30, 30, 1.0),
              ),
            ),
          ),

          /**
           * Front side
           **/
          Positioned(
            top: 30,
            child: Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              child:
              /**
               * Inner Board
               */
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(28, 28, 28, 1.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  border: Border.all(
                      width: 2,
                      color: Colors.grey,
                      style: BorderStyle.solid),
                ),
                child:
                /**
                 * Smaller Speaker
                 */
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade800,
                                blurRadius: 18,
                                spreadRadius: 4,
                                offset: const Offset(0, 0),
                                blurStyle: BlurStyle.inner)
                          ],
                          // border: Border.all(
                          //     width: 1.5,
                          //     color: Colors.black,
                          //     style: BorderStyle.solid),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3.0,
                                color: Colors.black,
                                style: BorderStyle.solid),
                            gradient: RadialGradient(colors: [
                              Colors.grey.shade400,
                              Colors.black,
                            ],
                                transform: const GradientRotation(10),
                                radius: .4),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4,
                              color: Colors.grey.shade800)),
                      child: Center(
                        child:

                        /**
                         * Bigger Speaker
                         */
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.blueAccent,
                                    blurRadius: 25,
                                    spreadRadius: 6,
                                    offset: Offset(0, 0))
                              ],
                              border: Border.all(
                                  width: 1.0,
                                  color: Colors.grey.shade600,
                                  style: BorderStyle.solid),
                              color: const Color.fromRGBO(4, 118, 30, 1.0),
                              shape: BoxShape.circle),
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.black,
                                  style: BorderStyle.solid),
                              gradient: const RadialGradient(colors: [
                                Colors.blue,
                                Colors.black,
                              ], radius: .3),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /**
           * Top side
           **/
          Row(
            children: [
              /**
               * First triangle
               */
              RotatedBox(
                quarterTurns: 1,
                child: CustomPaint(
                  painter: TrianglePainter(),
                  child: Container(
                    width: 30,
                    height: 50,
                  ),
                ),
              ),

              /**
               * Middle space
               */
              Container(
                width: 100,
                height: 30,
                color: const Color.fromRGBO(30, 30, 30, 1.0),
              ),

              /**
               * Left triangle
               */
              CustomPaint(
                painter: TrianglePainterRightSide(),
                child: Container(
                  width: 30,
                  height: 30,
                ),
              )
            ],
          ),

          /**
           * Bottom right triangle
           */
          Positioned(
            top: 250,
            left: 150,
            child: CustomPaint(
              painter: TrianglePainterRightSide(),
              child: Container(
                width: 32,
                //color: Colors.red,
                height: 23,
              ),
            ),
          )
        ],
      ),
    );
  }
}
