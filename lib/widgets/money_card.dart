import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final String title, amount, curr;
  final IconData symbol;

  final double order;

  final _blackColor = const Color(0xFF1F2123);

  const MoneyCard({
    super.key,
    required this.title,
    required this.amount,
    required this.curr,
    required this.symbol,

    required this.order,
  });

  bool get _isInverted => order % 2 == 0;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: double.infinity,
        decoration: BoxDecoration(
          color: _isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: _isInverted ? Color(0xFF1F2123) : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: _isInverted ? _blackColor : Colors.white,
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        curr,
                        style: TextStyle(
                          color: _isInverted
                              ? _blackColor
                              : Colors.white.withAlpha(120),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.5,
                child: Transform.translate(
                  offset: Offset(-5.0, 15.0),
                  child: Icon(
                    symbol,
                    color: _isInverted ? _blackColor : Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
