import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int audioNumber){
    final player = AudioCache();
     player.play('note$audioNumber.wav');
  }
  Expanded buildKey({Color couleur, int audioNumber}){
    return Expanded(
      child: FlatButton(
                  color: couleur,
              onPressed:(){
                 playSound(audioNumber);
              },
            ),);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
               buildKey(couleur: Colors.blue[400], audioNumber:1),
               buildKey(couleur: Colors.green[400], audioNumber:2),
               buildKey(couleur: Colors.red[400], audioNumber:3),
               buildKey(couleur: Colors.yellow[400], audioNumber:4),
               buildKey(couleur: Colors.black, audioNumber:5),
               buildKey(couleur: Colors.indigo[400], audioNumber:6),
               buildKey(couleur: Colors.orange[400], audioNumber:7),
              ],
            ),
      ),
    ),
    );
  }
}
