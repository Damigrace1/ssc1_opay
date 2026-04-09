import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';
import 'package:my_first_app/feature/home/components/balance_card.dart';
import 'package:my_first_app/feature/home/components/bvnnin.dart';
import 'package:my_first_app/feature/home/components/quick_actions.dart';
import 'package:my_first_app/feature/home/components/savings_challenge.dart';
import 'package:my_first_app/feature/home/components/transaction_tile.dart';
import 'package:my_first_app/feature/home/components/transfer_card.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});

  static const Color primaryColor = Color(0xff67b778);
  final String customerName = 'Mariam';
  String balance = '5,000,000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(customerName),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),
            BalanceCard(balance: balance),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  TransactionTile(
                    title: 'Electricity payment',
                    date: 'March 25th, 03:02:46',
                    iconData: Icons.arrow_downward,
                    color: primaryColor,
                    amount: '+₦150,000',
                  ),
                  TransactionTile(
                    title: 'DSTV payment',
                    date: 'January 31th, 03:02:46',
                    iconData: Icons.percent,
                    color: Colors.deepPurple,
                    amount: '+₦10,000',
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            TransferCard(),
            SizedBox(height: 12),
            BNVNINWdget(primaryColor: primaryColor),
            SizedBox(height: 12),
            QuickActions(),
            SizedBox(height: 12),
            SavingsChallenge(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
