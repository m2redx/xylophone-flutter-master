import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  void playSound({int soundnumber}){
    final player=AudioCache();
    player.play('note$soundnumber.wav');
  }
  Widget buildKey({int soundNumber,Color color}){
    return Expanded(
      child: FlatButton(
        color:color,
        onPressed: (){
          playSound(soundnumber: soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: <Widget>[
              buildKey(soundNumber:1 ,color :Colors.red),
              buildKey(soundNumber:2 ,color :Colors.orange),
              buildKey(soundNumber:3 ,color :Colors.yellow),
              buildKey(soundNumber:4 ,color :Colors.blue),
              buildKey(soundNumber:5 ,color :Colors.green),
              buildKey(soundNumber:6 ,color :Colors.teal),
              buildKey(soundNumber:7 ,color :Colors.purple),


            ],
          ),


        ),
      ),
    );
  }
}
