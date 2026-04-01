import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';
import 'package:my_first_app/feature/home/components/balance_card.dart';
import 'package:my_first_app/feature/home/components/bvnnin.dart';
import 'package:my_first_app/feature/home/components/transaction_tile.dart';


class TransferCard extends StatelessWidget {
  const TransferCard({super.key});
  static const Color primaryColor = Color(0xff67b778);
  Column _buildTransferActions({
    required String title,
    required IconData iconData,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: primaryColor.withAlpha(30),
          ),
          child: Icon(iconData, color: primaryColor),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTransferActions(title: 'To Opay', iconData: Icons.chat),
          _buildTransferActions(title: 'To Bank', iconData: Icons.house),
          _buildTransferActions(title: 'Withdraw', iconData: Icons.money),
        ],
      ),
    );
  }
}
