import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBeatPage extends StatelessWidget {
  const TopBeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 385,
            height: 39,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name or sound type',
                    labelStyle: GoogleFonts.plusJakartaSans(
                      color: Colors.black,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
                // keyboardType: TextInputType.number,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Top Beats',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset('assets/library.png')
        ],
      ),
    );
  }
}
