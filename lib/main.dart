import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
Expanded buildButton({required Color color, required int SoundNumber}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(SoundNumber);
      },
      style: TextButton.styleFrom(
      backgroundColor : color,
      ),
      child: Text(''),
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
            children: [
              buildButton(color: Colors.red,SoundNumber: 1),
              buildButton(color: Colors.orange,SoundNumber: 2),
              buildButton(color: Colors.yellow,SoundNumber: 3),
              buildButton(color: Colors.teal,SoundNumber: 4),
              buildButton(color: Colors.blueAccent,SoundNumber: 5),
              buildButton(color: Colors.purple,SoundNumber: 6),
              buildButton(color: Colors.green,SoundNumber: 7),
              
            ],
          ),
        ),
      ),
    );
  }
}
