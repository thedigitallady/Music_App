import 'package:engr_test2/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
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
            Text(
              'Explore\nAfrican Beats\n    & Sounds',
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600, fontSize: 36),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            const Image(
              image: AssetImage('assets/Showcase.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 108,
                  height: 38,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Afro beats',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 38,
                  width: 20,
                ),
                Container(
                  width: 108,
                  height: 38,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Amapiano',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
