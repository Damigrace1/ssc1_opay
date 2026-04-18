import 'package:flutter/material.dart';
import 'package:my_first_app/core/constants/colors.dart';

class GoButton extends StatelessWidget {
  const GoButton({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.primaryColor,
      ),
      child: Text(
        'Go',
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
    );
  }
}
