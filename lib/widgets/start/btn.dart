import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        width: 280,
        height: 45,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
