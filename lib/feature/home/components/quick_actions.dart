import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/home/components/app_card.dart';

class QuickActions extends StatelessWidget {
  QuickActions({super.key});

  final List<QuickActionData> _data = [
    QuickActionData(
      iconData: Icons.phone,
      title: 'Airtime',
      stackWidget: StackContainer(content: 'Up to 6%'),
    ),
    QuickActionData(
      iconData: CupertinoIcons.phone,
      title: 'Data',
      stackWidget: StackContainer(content: 'Up to 6%'),
    ),
    QuickActionData(iconData: Icons.sports_football, title: 'Betting'),
    QuickActionData(iconData: Icons.tv, title: 'TV'),
    QuickActionData(iconData: Icons.wallet, title: 'SafeBox'),
    QuickActionData(iconData: Icons.support, title: 'Loan'),
    QuickActionData(
      iconData: CupertinoIcons.speaker,
      title: 'Invitation',
      stackWidget: StackContainer(content: 'N5600'),
    ),
    QuickActionData(iconData: Icons.more_rounded, title: 'More'),
  ];
  static const Color primaryColor = Color(0xff67b778);
  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 220,

      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: _data.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          maxCrossAxisExtent: 100,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 12, width: double.infinity),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: primaryColor.withAlpha(20),
                    child: Icon(_data[index].iconData, color: primaryColor),
                  ),
                  Spacer(),
                  Text(
                    _data[index].title,
                    textAlign: TextAlign.center,

                    style: TextStyle(),
                  ),
                ],
              ),
              if (_data[index].stackWidget != null)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: _data[index].stackWidget!,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class StackContainer extends StatelessWidget {
  const StackContainer({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        gradient: LinearGradient(
          colors: [Colors.red.withAlpha(120), Colors.red],
        ),
      ),
      child: Text(
        content,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class QuickActionData {
  IconData iconData;
  String title;
  Widget? stackWidget;

  QuickActionData({
    required this.iconData,
    required this.title,
    this.stackWidget,
  });
}
