import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Buttons()),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Expanded getButton(Color backgroundColor, int noteNumber) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: FlatButton(
          onPressed: () {
            final player = new AudioCache();
            player.play('note$noteNumber.wav');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        getButton(Colors.red, 1),
        getButton(Colors.orange, 2),
        getButton(Colors.yellow, 3),
        getButton(Colors.green, 4),
        getButton(Colors.teal, 5),
        getButton(Colors.blue, 6),
        getButton(Colors.purple, 7),
      ],
    );
  }
}
