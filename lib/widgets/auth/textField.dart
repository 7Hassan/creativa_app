import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF3F3F3),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFF007AFF)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      ),
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}
