import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          FontAwesomeIcons.sliders,
          color: Colors.white,
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.notifications,
                size: 32,
                color: Colors.white,
              ))
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(45),
            child: Container(
              width: 320,
              height: 250,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(5, 5, 5, 1.0),
                  border: Border.all(
                      width: 1.0,
                      color: Colors.grey.shade800,
                      style: BorderStyle.solid),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Container(
                  width: 210,
                  height: 160,
                  color: const Color.fromRGBO(70, 70, 70, 1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Stack(children: [
                      Container(
                        width: 205,
                        height: 150,
                        color: const Color.fromRGBO(10, 10, 10, 1.0),
                      ),
                      Row(children: [
                        CustomPaint(
                          painter: TrianglePainter(),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          color: const Color.fromRGBO(30, 30, 30, 1.0),
                        ),
                        CustomPaint(
                          painter: TrianglePainterRightSide(),
                          child: Container(
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ]),
                      Positioned(
                        top: 100,
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: Row(children: [
                            CustomPaint(
                              painter: TrianglePainter(),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              color: const Color.fromRGBO(30, 30, 30, 1.0),
                            ),
                            CustomPaint(
                              painter: TrianglePainterRightSide(),
                              child: Container(
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ]),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(0, 0, 0, 1.0),
                Color.fromRGBO(0, 0, 0, 1.0),],
                      begin: Alignment.center, 
                      end: Alignment.bottomCenter), 
              borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: BottomNavigationBar(
                    backgroundColor: Colors.transparent,
                    unselectedItemColor: Colors.grey.shade700,
                    elevation: 0,
                    selectedFontSize: 0,
                    unselectedFontSize: 0,
                    selectedItemColor: Colors.white,
                    items: const [
                      BottomNavigationBarItem(
                        label: "Home",
                        icon: Icon(Icons.home_outlined),
                      ),
                      BottomNavigationBarItem(
                        label: "Home",
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                      BottomNavigationBarItem(
                        label: "Account",
                        icon: Icon(Icons.account_circle_outlined),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TrianglePainterRightSide extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = const Color.fromRGBO(30, 30, 30, 1.0)
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..color = const Color.fromRGBO(30, 30, 30, 1.0)
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
