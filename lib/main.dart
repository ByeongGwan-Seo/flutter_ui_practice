import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/widgets/app_header.dart';
import 'package:flutter_ui_practice/widgets/home_button.dart';
import 'package:flutter_ui_practice/widgets/money_card.dart';
import 'package:flutter_ui_practice/widgets/wallets_header.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final List<Map<String, dynamic>> wallets = [
    {
      'title': 'Euro',
      'amount': '6 428',
      'curr': 'EUR',
      'symbol': Icons.euro_rounded,
      'order': 1,
    },
    {
      'title': 'Yen',
      'amount': '7 329',
      'curr': 'JPY',
      'symbol': Icons.currency_yen_rounded,
      'order': 2,
    },
    {
      'title': 'Dollar',
      'amount': '8 247',
      'curr': 'USD',
      'symbol': Icons.attach_money_rounded,
      'order': 3,
    },
    {
      'title': 'Bitcoin',
      'amount': '7 500',
      'curr': 'BTC',
      'symbol': Icons.currency_bitcoin_rounded,
      'order': 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                AppHeader(),
                SizedBox(height: 40),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withAlpha(120),
                  ),
                ),
                Text(
                  '\$5 194 382',
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeButton(
                      text: 'Transfer',
                      bgColor: Colors.amberAccent,
                      textColor: Colors.black,
                    ),
                    HomeButton(
                      text: 'Request',
                      bgColor: Colors.black,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 60),
                WalletsHeader(),
                SizedBox(height: 20),
                ...wallets.map(
                  (wallet) => MoneyCard(
                    title: wallet['title'],
                    amount: wallet['amount'],
                    curr: wallet['curr'],
                    symbol: wallet['symbol'],
                    order: (wallet['order'] as int).toDouble(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
