import 'package:flutter/material.dart';

class MusicControlPanel extends StatefulWidget {
  const MusicControlPanel({super.key});

  @override
  State<MusicControlPanel> createState() => _MusicControlPanelState();
}

class _MusicControlPanelState extends State<MusicControlPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3.0,
          color: Colors.blue.withOpacity(0.3),
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /**
           * Previous Button
           */
          IconButton(
            onPressed: () {
              print("Previous button Clicked!");
            },
            icon: const Icon(
              Icons.skip_previous_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),

          /**
           * Fast Rewind Button
           */
          IconButton(
            onPressed: () {
              print("Fast Rewind button Clicked!");
            },
            icon: Icon(
              Icons.fast_rewind_outlined,
              color: Colors.blue.shade900,
              size: 28,
            ),
          ),

          /**
           * Play button
           */
          IconButton(
            onPressed: () {
              print("Play button Clicked!");
            },
            icon: const Icon(
              Icons.play_arrow_outlined,
              color: Colors.blue,
              size: 48,
            ),
          ),

          /**
           * Fast Forward button
           */
          IconButton(
            onPressed: () {
              print("Fast Forward Button Clicked!");
            },
            icon: Icon(
              Icons.fast_forward_outlined,
              color: Colors.blue.shade900,
              size: 28,
            ),
          ),

          /**
           * Next Button
           */
          IconButton(
              onPressed: () {
                print("Next button Clicked!");
              },
              icon: const Icon(
                Icons.skip_next_outlined,
                color: Colors.white,
                size: 32,
              )),
        ],
      ),
    );
  }
}
