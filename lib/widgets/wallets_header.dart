import 'package:flutter/material.dart';

class WalletsHeader extends StatelessWidget {
  const WalletsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Wallets',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'View All',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w300,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
