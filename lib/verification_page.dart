import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'check_page.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter One Time Password',
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600, fontSize: 6),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'A One Time Password has been sent to\n0800 000 000',
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600, fontSize: 13),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 35, right: 35),
            child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(),
                  OtpTextField(),
                  OtpTextField(),
                  OtpTextField(),
                  OtpTextField(),
                  OtpTextField(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Icon(
                (Icons.undo),
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Change phone',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Icon(
                (Icons.undo),
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Stack(children: [
              Image.asset(
                'assets/border_gradient.png',
                width: 200,
                height: 100,
              ),
              ElevatedButton(
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
                  Navigator.pop(context);
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return const CheckPage();
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 5),
                  child: Row(
                    children: [
                      Text(
                        'Validate OTP',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
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

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: 46,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
            hintText: "0",
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 174, 168, 168)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 176, 39, 149)),
                borderRadius: BorderRadius.circular(10)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        style: const TextStyle(fontSize: 25),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      ),
    );
  }
}
