import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/app_card.dart';

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
          ListTile(),
        ],
      ),
    );
  }
}
