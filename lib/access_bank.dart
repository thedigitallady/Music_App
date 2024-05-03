import 'package:engr_test2/account_added.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:engr_test2/text_field.dart';

class AccessBank extends StatelessWidget {
  const AccessBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
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
                'Add Bank Account',
                style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const MyTextField(
            hintText: ' Access Bank',
          ),
          const SizedBox(
            height: 20,
          ),
          const MyTextField(
            hintText: '0000000000000',
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Stack(
              children: [
                Image.asset(
                  'assets/border_gradient.png',
                  width: 200,
                  height: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
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
                        return const AccountAdded();
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 5),
                    child: Row(
                      children: [
                        Text(
                          'Add Account',
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
