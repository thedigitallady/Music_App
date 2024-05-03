import 'package:engr_test2/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'home_page.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [
            SkipButton(),
          ],
        ),
        Text(
          'Sound & Beats',
          style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w600, fontSize: 20, color: text),
        ),
        const SizedBox(
          width: 152,
          height: 25,
        ),
        RichText(
          text: TextSpan(
            text: '  The greatest\n  Sound ',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600, fontSize: 36, color: textSpan),
            children: const <TextSpan>[
              TextSpan(
                text: ' to the\nlatest hit sound ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 36),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Image(
          image: AssetImage('assets/Frame.png'),
        ),
        const SizedBox(
          height: 25,
        ),
        const Image(
          image: AssetImage('assets/Artist.png'),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 130),
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const HomePage();
                  }));
                },
                child: Text(
                  'Explore Sounds',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Icon(Icons.add_circle_outline_rounded)
            ],
          ),
        )
      ],
    );
  }
}
