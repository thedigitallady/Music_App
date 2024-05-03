import 'package:engr_test2/colors.dart';
import 'package:engr_test2/earn_page.dart';
import 'package:engr_test2/music_page.dart';
import 'package:engr_test2/second_music_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'top_beat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200, left: 20),
                child: Text(
                  'Top of the Sounds',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor:
                          Colors.transparent, // Make the background transparent
                      builder: (BuildContext context) {
                        return const TopBeatPage();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  label: const Text(''),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 275),
            child: Text(
              'Top Beats',
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text(
              'Discover',
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600, fontSize: 14, color: discover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal, // For horizontal scrolling
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const MusicPage();
                          },
                        ),
                      );
                    },
                    child: Image.asset('assets/image.png'),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SecondMusicPage();
                            },
                          ),
                        );
                      },
                      child: Image.asset('assets/Artist.png')),
                  Image.asset('assets/Showcase.png'),
                  // Add more images here
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 5),
                child: Text(
                  'New Drops',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
              Text(
                'December',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: discover,
                ),
              ),
              const SizedBox(
                width: 90,
              ),
              Text(
                'Feel it',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 13),
            child: SizedBox(
              height: 138,
              child: ListView(
                scrollDirection: Axis.horizontal, // For horizontal scrolling
                children: [
                  Image.asset('assets/Showcase.png'),
                  Image.asset('assets/Showcase.png'),
                  Image.asset('assets/Showcase.png'),
                  Image.asset('assets/image.png'),
                  Image.asset('assets/Artist.png'),
                  // Add more images here
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //TextButton to Music page
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(left: 50)),
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return const EarnFromScreaming();
                    },
                  );
                },
                child: Text(
                  'Explore the Caves',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                  left: 100,
                )),
                onPressed: () {},
                child: Text(
                  'Make Music',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 270),
            child: SarsButton(),
          ),
        ],
      ),
    );
  }
}

class SarsButton extends StatelessWidget {
  const SarsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        fixedSize: const Size(94, 30),
        padding: const EdgeInsets.all(10),
        backgroundColor: sars,
        visualDensity: VisualDensity.compact,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            'assets/Ellipse 1.png',
            width: 16,
            height: 16,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Sars',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600, fontSize: 14, color: text),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            size: 15,
            color: text,
          ),
        ],
      ),
    );
  }
}
