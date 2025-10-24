import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const HomeButton({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  // HomeButton({required this.text, required this.bgColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
