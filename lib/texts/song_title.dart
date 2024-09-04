import 'package:flutter/material.dart';

class NowPlayingSongTitle extends StatefulWidget {
  const NowPlayingSongTitle({super.key});

  @override
  State<NowPlayingSongTitle> createState() => _NowPlayingSongTitleState();
}

class _NowPlayingSongTitleState extends State<NowPlayingSongTitle> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const Text(
          "Justin Beiber",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "Time New Roman"),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "- All Around the world",
          style: TextStyle(color: Colors.grey.shade100, fontSize: 12),
        ),
      ],);
  }
}
