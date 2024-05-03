import 'package:audioplayers/audioplayers.dart';
import 'package:engr_test2/new_features/lib/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondMusicPage extends StatefulWidget {
  const SecondMusicPage({super.key});

  @override
  State<SecondMusicPage> createState() => _SecondMusicPageState();
}

class _SecondMusicPageState extends State<SecondMusicPage> {
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
    path = AssetSource('audio/Tems_me_&_U.mp3');

    // set a callback for changing duration
    player.onDurationChanged.listen((Duration d) {
      setState(() => _duration = d);
    });

    // set a callback for position change
    player.onPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });

    // set a callback for when audio ends
    player.onPlayerComplete.listen((_) {
      setState(() {
        isPlaying = false;
        _position = _duration;
      });
    });
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
            padding: const EdgeInsets.only(right: 200),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Tems  - Me & U',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/Artist.png',
          ),
          const SizedBox(
            height: 90,
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
          const SizedBox(height: 50),
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
