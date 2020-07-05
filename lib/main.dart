import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playNote(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNote(noteNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, noteNumber: 1),
            buildKey(color: Colors.amber, noteNumber: 2),
            buildKey(color: Colors.lightBlue, noteNumber: 3),
            buildKey(color: Colors.green, noteNumber: 4),
            buildKey(color: Colors.blue, noteNumber: 5),
            buildKey(color: Colors.pink, noteNumber: 6),
            buildKey(color: Colors.deepPurple, noteNumber: 7),
          ],
        ),
      ),
    );
  }
}
