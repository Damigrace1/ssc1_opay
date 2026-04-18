import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        'Hot Deals Just for You!',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: Column(
        children: [
          Text(
            'Deposit N100,000 and get 10% interest for 3 months ',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 20, height: 2, color: Colors.black),
              SizedBox(width: 7),
              Container(width: 7, height: 2, color: Colors.grey),
              SizedBox(width: 7),
              Container(width: 7, height: 2, color: Colors.grey),
            ],
          ),
        ],
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(50),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(Icons.games, size: 35),
      ),
    );
  }
}
