import 'package:engr_test2/home_page.dart';
import 'package:engr_test2/new_features/lib/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

import 'gesture_dectector.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;

  Duration _duration = const Duration();
  Duration _position = const Duration();

  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future initPlayer() async {
    player = AudioPlayer();
    //path = AssetSource('Audio/happiness.mp3');
    path = AssetSource('audio/happiness.mp3');

    // set a callback for changing duration
    player.onDurationChanged.listen(
      (Duration d) {
        setState(() => _duration = d);
      },
    );

    // set a callback for position change
    player.onPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });

    // set a callback for when audio ends
    player.onPlayerComplete.listen(
      (_) {
        setState(() {
          isPlaying = false;
          _position = _duration;
        });
      },
    );
  }

  void playPause() async {
    if (isPlaying) {
      player.pause();
      isPlaying = false;
    } else {
      player.play(path);
      isPlaying = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 20),
            child: Row(
              children: [
                const GestureDectector(),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Sarz  - Happiness',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 57, 38, 38),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(alignment: Alignment.center, child: SarsButton()),
          const SizedBox(
            height: 5,
          ),
          Image.asset(
            'assets/happiness.png',
            width: 400,
          ),
          const SizedBox(
            height: 5,
          ),
          Slider(
            value: _position.inSeconds.toDouble(),
            onChanged: (value) async {
              await player.seek(Duration(seconds: value.toInt()));
              setState(() {});
            },
            min: 0,
            max: _duration.inSeconds.toDouble(),
            inactiveColor: Colors.grey,
            activeColor: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(_duration.format()),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  player.seek(Duration(seconds: _position.inSeconds - 10));
                  setState(() {});
                },
                child: Image.asset('assets/backward.png'),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: playPause,
                child: Icon(
                  isPlaying ? Icons.pause_circle : Icons.play_arrow,
                  color: Colors.black,
                  size: 70,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  player.seek(Duration(seconds: _position.inSeconds + 10));
                  setState(() {});
                },
                child: Image.asset('assets/forward.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
