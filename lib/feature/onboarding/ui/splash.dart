import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:my_first_app/feature/onboarding/ui/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => SignUpScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00C28A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/opay_logo.svg'),
            SizedBox(height: 17, width: double.infinity),
            Text(
              'We are Beyond Banking',
              style: TextStyle(
                color: Color(0xff321E71),
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
            SizedBox(height: 49),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 30,
                  height: 40,
                  'assets/images/nig_logo.png',
                ),
                SizedBox(width: 5),
                Text(
                  'LICENSED BY CBN INSURED BY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xff1E2E4B),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Text(
                      'NDIC',
                      style: TextStyle(
                        fontSize: 22,
                        height: 1,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff3C3690),
                      ),
                    ),
                    Text(
                      'Nigeria Deposit Insurance Corporation',
                      style: TextStyle(
                        fontSize: 4,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Protecting your bank deposits',
                      style: TextStyle(
                        fontSize: 3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
