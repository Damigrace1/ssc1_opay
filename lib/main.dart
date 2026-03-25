import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/feature/onboarding/ui/splash.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
