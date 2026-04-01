
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';
import 'package:my_first_app/feature/home/components/balance_card.dart';
import 'package:my_first_app/feature/home/components/transaction_tile.dart';
import 'package:my_first_app/feature/home/ui/dash_board.dart';


class BNVNINWdget extends StatelessWidget {
  const BNVNINWdget({
    super.key,
    required this.primaryColor,
  });

  final Color primaryColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    
      padding: EdgeInsets.all(12),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.scanner),
          backgroundColor: CupertinoColors.activeOrange.withAlpha(40),
        ),
        title: Text(
          'Your BVN and NIN info do not match',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        subtitle: Text(
          'Click to view more details',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: primaryColor,
          ),
          child: Text(
            'Go',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
