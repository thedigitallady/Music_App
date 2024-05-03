import 'package:flutter/material.dart';
export 'package:engr_test2/text_field.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
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
