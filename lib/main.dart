import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DrumMachine(),
  );
}

class DrumMachine extends StatelessWidget {
  DrumMachine({super.key});
  final player = AudioPlayer();
  void sesiCal(String ses) async {
    await player.play(
      AssetSource(
        '$ses.wav',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: newMethod(
                            'bip',
                            Color.fromARGB(255, 248, 0, 0),
                            'Obo Formasyonu',
                          ),
                        ),
                        Expanded(
                          child: newMethod(
                            'bongo',
                            Colors.green,
                            'Obo Formasyonu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: newMethod(
                            'clap1',
                            Color.fromARGB(255, 0, 0, 0),
                            'Obo Formasyonu',
                          ),
                        ),
                        Expanded(
                          child: newMethod(
                            'crash',
                            Colors.blue,
                            'Obo Formasyonu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: newMethod(
                            'how',
                            Colors.brown,
                            'Obo Formasyonu',
                          ),
                        ),
                        Expanded(
                          child: newMethod(
                            'oobah',
                            Colors.transparent,
                            'Obo Formasyonu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: newMethod(
                            'ridebel',
                            const Color.fromARGB(255, 141, 127, 1),
                            'Obo Formasyonu',
                          ),
                        ),
                        Expanded(
                          child: newMethod(
                            'woo',
                            Colors.indigoAccent,
                            'Obo Formasyonu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: newMethod(
                            'clap3',
                            Colors.amber,
                            'Obo Formasyonu',
                          ),
                        ),
                        Expanded(
                          child: newMethod(
                            'clap2',
                            Colors.lime,
                            'Obo Formasyonu',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding newMethod(String ses, Color renk, String yazi) {
    return Padding(
      padding: const EdgeInsets.all(
        4.0,
      ),
      child: Container(
        width: 240,
        height: 180,
        child: ElevatedButton(
          onPressed: () {
            sesiCal(
              ses,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: renk,
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
          ),
          child: Text(
            yazi,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
