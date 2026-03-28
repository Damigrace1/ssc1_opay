import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatefulWidget {
  BalanceCard({super.key, required this.balance});

  final String balance;

  static const Color primaryColor = Color(0xff67b778);

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool hideBalance = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BalanceCard.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Icon(CupertinoIcons.checkmark_shield_fill, color: Colors.white),
              SizedBox(width: 2),
              Text(
                'Available Balance',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(width: 4),
              GestureDetector(
                onTap: () {
                  hideBalance = !hideBalance;
                  setState(() {});
                },
                child: Icon(
                  hideBalance == false
                      ? CupertinoIcons.eye_fill
                      : CupertinoIcons.eye_slash_fill,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                'Transaction History',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(width: 4),
              Icon(CupertinoIcons.chevron_right, size: 15, color: Colors.white),
            ],
          ),
          SizedBox(height: 16),
          IntrinsicHeight(
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      '₦ ',
                      style: TextStyle(
                        height: 1.3,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Text(
                  hideBalance == true ? ' ******' : widget.balance,
                  style: TextStyle(
                    height: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  CupertinoIcons.chevron_right,
                  size: 18,
                  color: Colors.white,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 15,
                        color: BalanceCard.primaryColor,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Add Money',
                        style: TextStyle(color: BalanceCard.primaryColor),
                      ),
                    ],
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
