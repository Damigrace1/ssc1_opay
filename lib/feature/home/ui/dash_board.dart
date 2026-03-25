import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/appbar.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  final String customerName = 'Mariam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(customerName),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff67b778),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
