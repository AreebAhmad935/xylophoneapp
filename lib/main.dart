import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void soundplay(int player) {
    final player = AudioCache();
    player.play('$player.wav');
  }

  Expanded buildkey() {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            soundplay(2);
          },)
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildkey(),
                buildkey(),
                buildkey(),
                buildkey(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
