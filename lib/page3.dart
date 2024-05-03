// onboarding_pages.dart
import 'package:engr_test2/skip_button.dart';
import 'package:engr_test2/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

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
          height: 25,
          width: 152,
        ),
        const Image(
          image: AssetImage(
            'assets/globe2.GIF',
          ),
          height: 128,
          width: 128,
        ),
        const SizedBox(
          height: 25,
          width: 152,
        ),
        const Image(
          image: AssetImage(
            'assets/StackImage.PNG',
          ),
          width: 308.4,
          height: 303.6,
        ),
        const SizedBox(
          height: 48,
          width: 184,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            fixedSize: const Size(184, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return const BottomSheet();
                // return Navigator(
                //   key: _navigatorKey,
                //   onGenerateRoute: (settings) {
                //     return MaterialPageRoute(
                //       builder: (context) {
                //         return const BottomSheet();
                //       },
                //     );
                //   },
                // );
              },
            );
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Sign up with phone',
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'PHONE NUMBER',
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600, fontSize: 10),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  hintText: '+234',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'An OTP would sent to phone number',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Stack(children: [
              Image.asset(
                'assets/border_gradient.png',
                width: 200,
                height: 100,
              ),
              TextButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.only(top: 35),
                  fixedSize: const Size(231, 60),
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return const VerificationPage();
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, top: 5),
                  child: Row(
                    children: [
                      Text(
                        'Verify phone',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({
    required this.hintText,
    super.key,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            labelStyle: const TextStyle(
              color: Colors.grey,
            ),
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
