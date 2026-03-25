
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(
  String customerName
) {
  
    return AppBar(
      leadingWidth: 66,
      leading: Container(
        margin: EdgeInsets.only(left: 16),
        child: Stack(
          children: [
            CircleAvatar(radius: 50),
            Positioned(
              right: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey,
                child: Text('2', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      title: Text(
        'Hi,$customerName',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.headphones),
            ),
            Positioned(
              right: 0,
              top: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 209, 225),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),

                child: Text(
                  'HELP',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 7,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
          ],
        ),

        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.viewfinder)),
        Stack(
          children: [
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
            Positioned(
              right: 0,

              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 12,
                child: Text(
                  '99+',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
      ],
    );
  }
