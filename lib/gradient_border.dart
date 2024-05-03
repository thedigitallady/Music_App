import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_bank_account.dart';

class GradientBorder extends StatelessWidget {
  const GradientBorder({
    required this.text,
    super.key,
  });
  final Widget text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Stack(children: [
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
                return const AddBankAccount();
              },
            );
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Add Bank Account',
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
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
      ]),
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
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
