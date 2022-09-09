import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playsound(int n){
    final player=AudioPlayer();
    player.play(AssetSource('assets_note$n.wav'),);
  }
  Expanded buildkey({Color? color,int? num}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed:(){
          playsound(num!);
        },
        child: const SizedBox(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            buildkey(color: Colors.red,num: 1),
            buildkey(color: Colors.orange,num: 2),
            buildkey(color: Colors.yellow,num: 3),
            buildkey(color: Colors.green,num: 4),
            buildkey(color: Colors.teal,num: 5),
            buildkey(color: Colors.blue,num: 6),
            buildkey(color: Colors.purple,num: 7),
            ],
          ),
          ),
        ),
      );
  }
}
