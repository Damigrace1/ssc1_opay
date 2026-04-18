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
import 'package:my_first_app/feature/home/ui/hometab.dart';

class Shell extends StatefulWidget {
  Shell({super.key});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  final String customerName = 'Mariam';

  String balance = '5,000,000';

  List<Widget> tabs = [
    HomeTab(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        iconSize: 32,
        selectedLabelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),

        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.shield_tick),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.wallet),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.profile_circle),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
