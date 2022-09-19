import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AudioPlayer player;
  late AudioPlayer player2;
  late AudioPlayer player3;
  late AudioPlayer player4;
  late AudioPlayer player5;
  late AudioPlayer player6;
  late AudioPlayer player7;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player2 = AudioPlayer();
    player3 = AudioPlayer();
    player4 = AudioPlayer();
    player5 = AudioPlayer();
    player6 = AudioPlayer();
    player7 = AudioPlayer();
  }

  // @override
  // void dispose() {
  //   player.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top:10,bottom:10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player.setAsset('assets/note1.wav');
                    player.play();
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player2.setAsset('assets/note2.wav');
                    player2.play();
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player3.setAsset('assets/note3.wav');
                    player3.play();
                  },
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player4.setAsset('assets/note4.wav');
                    player4.play();
                  },
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player5.setAsset('assets/note5.wav');
                    player5.play();
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player6.setAsset('assets/note6.wav');
                    player6.play();
                  },
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    await player7.setAsset('assets/note7.wav');
                    player7.play();
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
