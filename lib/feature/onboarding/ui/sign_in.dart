import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hey student, design this as an assignment')),
    );
  }
}
