import 'package:appflutter/utils/reusable_text.dart';
import 'package:appflutter/widgets/song_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MySongsList extends StatefulWidget {
  const MySongsList({super.key});

  @override
  State<MySongsList> createState() => _MySongsListState();
}

class _MySongsListState extends State<MySongsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const ReusableText(text: "music", fw: FontWeight.w600, font: "Times New Roman", size: 18, color: Colors.white,),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.spotify, size: 28, color: Colors.green.shade800,),
              const SizedBox(width: 10,),
              const ReusableText(text: "Spotify", fw: FontWeight.w200, font: "Times New Roman", size: 12, color: Colors.white,),
            ],
          ),
        )],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromRGBO(2, 7, 55, 1.0),

              Color.fromRGBO(5, 5, 5, 1.0),
            ],
            radius: 1.0,
          ),
        ),
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   ReusableText(
                    text: "My Music",
                    fw: FontWeight.bold,
                    color: Colors.blue.shade400,
                    //color: Color.fromRGBO(0, 23, 135, 1.0),
                    font: 'Times New Roman',
                    size: 38,
                  ),
                  ReusableText(
                    text: "all your favourite music on one place",
                    fw: FontWeight.w200,
                    color: Colors.grey.shade200,
                    //color: Color.fromRGBO(0, 0, 119, 1.0),
                    font: 'Times New Roman',
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              /**
               * Most Played Songs
               */
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            text: "Most played songs",
                            fw: FontWeight.w600,
                            color: Colors.white,
                            //color: Color.fromRGBO(3, 24, 186, 1.0),
                            font: 'Times New Roman',
                            size: 22,
                          ),
                          ReusableText(
                            text: "view all",
                            fw: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            font: 'Times New Roman',
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 100,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2.0, color: Colors.blue, style: BorderStyle.solid),
                              ),
                            );
                          },
                        ),
                      ),
                  
                      const SizedBox(height: 30,),
                      /**
                       * My Songs
                       */
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                              text: "All Music",
                              color: Colors.blue.shade400,
                              // color: Color.fromRGBO(1, 13, 113, 1.0),
                              font: 'Times New Roman',
                              fw: FontWeight.w700,
                              size: 28),
                          ReusableText(
                              text: "list of all your tracks",
                              color: Colors.grey.shade400,
                              font: 'Times New Roman',
                              fw: FontWeight.w400,
                              size: 16),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: ((BuildContext context, int index){
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: SongTile(),
                            );
                          })),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(2, 7, 55, 1.0),
        // backgroundColor: Colors.blue.shade900,
        onPressed: () {  },
      child: Icon(FontAwesomeIcons.plus, color: Colors.blue.shade100,),
      ),
    );
  }
}
