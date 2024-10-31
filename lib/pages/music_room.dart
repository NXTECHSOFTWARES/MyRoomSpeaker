import 'package:appflutter/pages/songs_pages.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:appflutter/widgets/control_panel.dart';
import 'package:appflutter/widgets/now_playing.dart';
import 'package:appflutter/widgets/speaker.dart';
import 'package:appflutter/widgets/television.dart';
import 'package:appflutter/widgets/wall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../texts/header.dart';
import '../widgets/tv_remote.dart';

class MyBoxPage extends StatelessWidget {
  const MyBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: Drawer(),
        backgroundColor: const Color.fromRGBO(228, 228, 228, 1.0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(
              margin: EdgeInsets.only(left: 15.h),
              child: Image.asset("assets/Images/app_logo.png")),
          actions: [
            Container(
              width: 34.w,
              height: 34.h,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                FontAwesomeIcons.music,
                size: 13.w,
                color: const Color.fromRGBO(0, 133, 255, 1.0),
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              Stack(
                children: [
                  const RoomWall(),
                  /**
               *  TV Remote
               */
                  Positioned(
                      top: 100.h,
                      right: 34.w,
                      child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    backgroundColor: Colors.black87,
                                    insetAnimationCurve: Curves.bounceIn,
                                    elevation: 4,
                                    child: Container(
                                      width: 400,
                                      height: 600,
                                      // decoration: BoxDecoration(
                                      //   //border: Border.symmetric(vertical: BorderSide(width: 1.0, color: Colors.grey.shade100, style: BorderStyle.solid))
                                      //   // border: Border.symmetric(
                                      //   //     vertical: BorderSide(width: 1.0, color: Colors.grey.shade100, style: BorderStyle.solid),
                                      //   // )
                                      // ),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const Text(
                                            'TV Remote Controller',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                            height: 100,
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 30),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient:
                                                    const RadialGradient(
                                                  colors: [
                                                    Colors.blueAccent,
                                                    // Color.fromRGBO(
                                                    //     15, 19, 76, 1.0),
                                                    Color.fromRGBO(
                                                        5, 5, 5, 1.0),
                                                  ],
                                                  radius: 1.5,
                                                ),
                                                border: Border.symmetric(
                                                    horizontal: BorderSide(
                                                        width: 1.0,
                                                        color: Colors
                                                            .grey.shade700,
                                                        style: BorderStyle
                                                            .solid))
                                                //     ),),
                                                ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .ondemand_video_outlined,
                                                  size: 32,
                                                  color: Colors
                                                      .blueAccent.shade700,
                                                ),
                                                Expanded(
                                                    child: Container(
                                                        child: const Center(
                                                            child: Text(
                                                                "Music Video",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Times New Roman',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500))))),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 80,
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 30),
                                            margin:
                                                const EdgeInsets.symmetric(
                                                    vertical: 5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient:
                                                    const RadialGradient(
                                                  colors: [
                                                    Color.fromRGBO(
                                                        15, 19, 76, 1.0),
                                                    Color.fromRGBO(
                                                        5, 5, 5, 1.0),
                                                  ],
                                                  radius: 1.5,
                                                ),
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors
                                                            .grey.shade700,
                                                        style: BorderStyle
                                                            .solid))
                                                //     ),),
                                                ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.itunesNote,
                                                  size: 32,
                                                  color: Colors
                                                      .blueAccent.shade700,
                                                ),
                                                Expanded(
                                                    child: Container(
                                                        child: const Center(
                                                            child: Text(
                                                                "Lyrics",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Times New Roman',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500))))),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 100,
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 30),
                                            margin:
                                                const EdgeInsets.symmetric(
                                                    vertical: 5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient:
                                                    const RadialGradient(
                                                  colors: [
                                                    Color.fromRGBO(
                                                        15, 19, 76, 1.0),
                                                    Color.fromRGBO(
                                                        5, 5, 5, 1.0),
                                                  ],
                                                  radius: 1.5,
                                                ),
                                                border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors
                                                            .grey.shade700,
                                                        style: BorderStyle
                                                            .solid))
                                                //     ),),
                                                ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons
                                                      .microphoneAlt,
                                                  size: 32,
                                                  color: Colors
                                                      .blueAccent.shade700,
                                                ),
                                                Expanded(
                                                    child: Container(
                                                        child: const Center(
                                                            child: Text(
                                                                "Kareoke",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Times New Roman',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500))))),
                                              ],
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          Container(
                                            width: 150,
                                            height: 150,
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    width: 1.0,
                                                    color:
                                                        const Color.fromRGBO(
                                                            17, 17, 193, 1.0),
                                                    style:
                                                        BorderStyle.solid)),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                gradient: RadialGradient(
                                                  colors: [
                                                    Color.fromRGBO(
                                                        15, 19, 76, 0.5),
                                                    Colors.white10,
                                                  ],
                                                  radius: 5,
                                                ),
                                                shape: BoxShape.circle,
                                                //border: Border.all(width: 3.0, color: Colors.grey.shade500, style: BorderStyle.solid)
                                              ),
                                              child: const Icon(
                                                FontAwesomeIcons.powerOff,
                                                color: Colors.white,
                                                size: 34,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                            //showDialog(context: context, builder: BuildContext)
                            print("Remote Clicked!");
                          },
                          child: const MyTvRemote())),
                  /**
                   * Television
                   */
                  Positioned(top: 33.h, left: 30.w, child: const TV()),
                  /**
                   * Bluetooth Speaker
                   */
                  const Positioned(
                    top: 250,
                    left: 120,
                    child: MyBluetoothSpeaker(),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    MyHeader(),
                    NowPlaying(),
                    SizedBox(
                      height: 20,
                    ),
                    MusicControlPanel(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
