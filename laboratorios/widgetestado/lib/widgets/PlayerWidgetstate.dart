import 'package:flutter/material.dart';

import './PlayerWidget.dart';

class PlayerWidgetState extends State<PlayerWidget> {
  bool isPlaying = false;
  void playerClick() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlueAccent,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                iconSize: 150.0,
                onPressed: () {
                  playerClick();
                }),
            Text(
              isPlaying ? 'Pause' : 'Play',
              style: new TextStyle(fontSize: 24.0),
            )
          ],
        ));
  }
}
