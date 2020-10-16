import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              PlaySound(SoundNumber);
            },
            child: null));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, SoundNumber: 1),
              buildKey(color: Colors.deepOrange, SoundNumber: 2),
              buildKey(color: Colors.yellowAccent, SoundNumber: 3),
              buildKey(color: Colors.green, SoundNumber: 4),
              buildKey(color: Colors.blue, SoundNumber: 5),
              buildKey(color: Colors.indigo, SoundNumber: 6),
              buildKey(color: Colors.purple, SoundNumber: 7),
              Text(
                'Made With Love By HIMANSHU',
                style: TextStyle(color: Colors.red, letterSpacing: 4),
              )
            ],
          ),
        ),
      ),
    );
  }
}
