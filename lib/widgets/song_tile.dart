import 'package:appflutter/utils/reusable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class SongTile extends StatefulWidget {
  const SongTile({super.key});

  @override
  State<SongTile> createState() => _SongTileState();
}

class _SongTileState extends State<SongTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.blue.shade900,
              // Color.fromRGBO(
              //     15, 19, 76, 1.0),
              Color.fromRGBO(
                  5, 5, 5, 1.0),
            ],
            radius: 2.5,
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 1.0,
              style: BorderStyle.solid,
              color: const Color.fromRGBO(5, 5, 37, 1.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                gradient: const RadialGradient(colors: [
                  Color.fromRGBO(0, 0, 0, 1.0),
                  Color.fromRGBO(0, 0, 255, 1.0),
                ],
                    radius: 2.5,
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1.5,
                    color: Colors.blue.shade800,
                    style: BorderStyle.solid)),
            child: const Icon(
              Icons.play_arrow_outlined,
              size: 32,
              color: Colors.blue,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ReusableText(
                        text: "Justin Beiber",
                        color: Colors.white,
                        // color: Color.fromRGBO(0, 0, 255, 1.0),
                        font: 'Times New Roman',
                        fw: FontWeight.w700,
                        size: 16),
                    SizedBox(
                      width: 10,
                    ),
                    ReusableText(
                        text: "ft LudaChris",
                        color: Colors.grey.shade200,
                        font: 'Times New Roman',
                        fw: FontWeight.w500,
                        size: 16),
                  ],
                ),
                ReusableText(
                    text: "Baby",
                    color: Colors.blue.shade500,
                    // color: const Color.fromRGBO(28, 28, 28, 1.0),
                    font: 'Times New Roman',
                    fw: FontWeight.w700,
                    size: 22),
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.grey,
                //color: Color.fromRGBO(0, 0, 255, 1.0),
                size: 22,
              ))
        ],
      ),
    );
  }
}
