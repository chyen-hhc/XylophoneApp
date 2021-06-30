import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final colorPick = [
    null,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  final player = AudioCache();
  Expanded createButton({int number}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => player.play('note$number.wav'),
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorPick[number]),
        ),
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
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createButton(number: 1),
              createButton(number: 2),
              createButton(number: 3),
              createButton(number: 4),
              createButton(number: 5),
              createButton(number: 6),
              createButton(number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
