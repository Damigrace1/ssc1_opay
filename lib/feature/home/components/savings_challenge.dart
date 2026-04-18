import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/app_card.dart';
import 'package:my_first_app/feature/home/components/go_button.dart';

class SavingsChallenge extends StatelessWidget {
  const SavingsChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [Color(0xffebf3eb), Color(0xfff0f1d3)],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Saving Challenge 2026',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Icon(Icons.gif_box, size: 35),
            ],
          ),
          SizedBox(height: 24),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Special Target',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Start small daily, finish big in 2026',
              style: TextStyle(fontSize: 12),
            ),
            leading: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.track_changes, size: 35),
            ),
            trailing: GoButton(),
          ),
        ],
      ),
    );
  }
}
