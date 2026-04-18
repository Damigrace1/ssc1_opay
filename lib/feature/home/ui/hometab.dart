import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:my_first_app/core/constants/colors.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';
import 'package:my_first_app/feature/home/components/balance_card.dart';
import 'package:my_first_app/feature/home/components/bvnnin.dart';
import 'package:my_first_app/feature/home/components/hot_deals.dart';
import 'package:my_first_app/feature/home/components/quick_actions.dart';
import 'package:my_first_app/feature/home/components/savings_challenge.dart';
import 'package:my_first_app/feature/home/components/transaction_tile.dart';
import 'package:my_first_app/feature/home/components/transfer_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Mariam'),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 32),
                BalanceCard(balance: '3000'),
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
                        color: AppColors.primaryColor,
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
                BNVNINWdget(),
                SizedBox(height: 12),
                QuickActions(),
                SizedBox(height: 12),
                SavingsChallenge(),
                SizedBox(height: 24),
                HotDeals(),
                SizedBox(height: 24),
              ],
            ),
          ),
          Positioned(
            bottom: 170,
            right: 10,
            child: Column(
              children: [
                Icon(Icons.shield, size: 100, color: AppColors.primaryColor),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    border: BoxBorder.all(
                      width: 5,
                      color: const Color.fromARGB(
                        255,
                        175,
                        248,
                        191,
                      ).withAlpha(150),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text(
                    'Click for Security',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
