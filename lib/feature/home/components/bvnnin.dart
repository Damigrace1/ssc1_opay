
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/go_button.dart';


class BNVNINWdget extends StatelessWidget {
  const BNVNINWdget({
    super.key,
  });



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
        trailing: GoButton(),
      ),
    );
  }
}

