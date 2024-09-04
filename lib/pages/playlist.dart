import 'package:appflutter/utils/reusable_text.dart';
import 'package:flutter/material.dart';

class MyPlaylist extends StatefulWidget {
  const MyPlaylist({super.key});

  @override
  State<MyPlaylist> createState() => _MyPlaylistState();
}

class _MyPlaylistState extends State<MyPlaylist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 600,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      //color: Color.fromRGBO(28, 28, 28, 1.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        //color: Colors.black87,
        gradient: const RadialGradient(
          colors: [
            Color.fromRGBO(2, 7, 55, 1.0),
            Color.fromRGBO(5, 5, 5, 1.0),
          ],
          radius: 1,
        ),
      ),
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, bottom: 30, left: 20),
                  child: ReusableText(
                      text: "My Music",
                      color: Colors.blue.shade100,
                      font: 'Times New Roman',
                      fw: FontWeight.w600,
                      size: 22),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText(
                      text: "Playlists",
                      color: Colors.white,
                      font: 'Times New Roman',
                      fw: FontWeight.w400,
                      size: 18),
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 28,
                  )
                ],
              ),
              const Divider(),
              Container(
                width: 120,
                height: 120,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    border: Border.all(
                        width: 1.5,
                        color: Colors.blueAccent,
                        style: BorderStyle.solid)),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.shuffle,
                      size: 22,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const ReusableText(
                        text: 'Shuffle',
                        color: Colors.white,
                        font: 'Times New Roman',
                        fw: FontWeight.w200,
                        size: 12),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.play_arrow_outlined,
                      size: 28,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const ReusableText(
                        text: 'Play all',
                        color: Colors.white,
                        font: 'Times New Roman',
                        fw: FontWeight.w200,
                        size: 12),
                  ],
                ),
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          // Color.fromRGBO(
                          //     186, 186, 186, 1.0),
                          Colors.blue.shade900,
                          const Color.fromRGBO(5, 5, 5, 1.0),
                        ],
                        radius: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromRGBO(5, 5, 37, 1.0),
                          style: BorderStyle.solid),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          //margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.0,
                                color: Colors.grey.shade600,
                                style: BorderStyle.solid),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ReusableText(
                                text: "Justin Timberlake",
                                color: Colors.white,
                                font: "Times New Roman",
                                fw: FontWeight.w500,
                                size: 18),
                            ReusableText(
                                text: "Cry Me a River",
                                color: Colors.grey.shade400,
                                font: "Times New Roman",
                                fw: FontWeight.w400,
                                size: 12),
                          ],
                        ),
                        const Icon(
                          Icons.play_arrow_outlined,
                          size: 32,
                          color: Colors.blueAccent,
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
