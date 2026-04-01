import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';
import 'package:my_first_app/feature/home/components/balance_card.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.amount,
    required this.title,
    required this.date,
    required this.color,
    required this.iconData,
  });

  static const Color primaryColor = Color(0xff67b778);

  final String amount;
  final String title;
  final String date;
  final Color color;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: color.withAlpha(30),
        child: Icon(iconData, size: 22, color: color),
      ),
      subtitle: Text(date, style: TextStyle(fontSize: 12, color: Colors.grey)),
      title: Text(title, style: TextStyle(fontSize: 12, letterSpacing: 0)),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            amount,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 0,
              color: primaryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: primaryColor.withAlpha(50),
            ),

            child: Text(
              'Successful',
              style: TextStyle(fontSize: 10, color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
