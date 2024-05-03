import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountAdded extends StatelessWidget {
  const AccountAdded({super.key});

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
          const SizedBox(height: 90),
          Image.asset(
            'assets/badge-check.png',
            height: 81,
            width: 81,
          ),
          const SizedBox(height: 20),
          Text(
            'Account Added',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );
  }
}
