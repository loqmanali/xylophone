import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded bulidKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              bulidKey(color: Colors.red, soundNumber: 1),
              bulidKey(color: Colors.green, soundNumber: 2),
              bulidKey(color: Colors.blue, soundNumber: 3),
              bulidKey(color: Colors.yellow, soundNumber: 4),
              bulidKey(color: Colors.orange, soundNumber: 5),
              bulidKey(color: Colors.pink, soundNumber: 6),
              bulidKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
