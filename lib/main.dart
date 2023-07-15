import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlay = true;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 18, 1),
        title: const Text('21st Century Club'),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 17, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset('assets/images/AL Ahly logo.png'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 40)),
            onPressed: () {
              setState(
                () {
                  isPlay = !isPlay;
                  if (isPlay == true) {
                    player.play(AssetSource('audios/audio2.mp3'));
                  } else if (isPlay == false) {
                    player.stop();
                  }
                },
              );
            },
            child: Text(
              isPlay ? 'Stop' : 'Play',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mohamed AbuJabal',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
