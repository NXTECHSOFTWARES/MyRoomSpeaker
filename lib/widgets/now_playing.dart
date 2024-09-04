import 'package:appflutter/pages/playlist.dart';
import 'package:appflutter/widgets/song_image.dart';
import 'package:appflutter/texts/song_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/reusable_text.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const NowPlayingSongImage(),
        const SizedBox(
          width: 0,
        ),
        const NowPlayingSongTitle(),
        IconButton(
            onPressed: () {

                showDialog(context: context, builder: (BuildContext context){
                  return
                    Dialog(
                      //backgroundColor: Color.fromRGBO(5, 5, 37, 1.0),
                      //backgroundColor: Colors.black87,
                      child: MyPlaylist(),
                    )
                  ;
                });

              print("My Song list Clicked!");
            },
            icon: const Icon(
              CupertinoIcons.music_note_list,
              size: 28,
              color: Colors.blue,
            ))
      ],
    );
  }
}
