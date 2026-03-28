import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';
import 'package:my_first_app/feature/home/components/balance_card.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});

  final String customerName = 'Mariam';
  String balance = '5,000,000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(customerName),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),
            BalanceCard(balance: balance),
          ],
        ),
      ),
    );
  }
}
