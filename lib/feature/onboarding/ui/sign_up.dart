import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:my_first_app/feature/home/ui/dash_board.dart';
import 'package:my_first_app/feature/onboarding/ui/sign_in.dart';

class CountryCodeDialog extends StatelessWidget {
  CountryCodeDialog({super.key});

  final List<String> codes = ['+234', '+133', '+455'];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select Country Code',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 22),
            ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              shrinkWrap: true,
              itemCount: codes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.back(result: codes[index]);
                  },
                  child: Text(
                    codes[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                );
              },
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String countryCode = '+234';
  String? phoneNumber;
  String? passWord;

  bool isConfirmButtonPressed = false;

  _loginAndMoveToDashboard() async {
    //1. Change confirm text to spinner

    setState(() {
      isConfirmButtonPressed = true;
    });

    //2. Wait for 3 seconds

    await Future.delayed(Duration(seconds: 3));
    //3. Go to Dashboard
    setState(() {
      isConfirmButtonPressed = false;
    });
    Get.offAll(() => DashBoard());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 67, width: double.infinity),
                Center(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/opay_logo.svg'),
                      SizedBox(height: 21),
                      Text(
                        'Welcome to Opay',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9DA3A8),
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 78),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff686B6F),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        // Get the result from dialog
                        final String? result = await Get.dialog(
                          CountryCodeDialog(),
                        );

                        //Check if result is not null and if it is not null, then assign it to countryCode variable
                        if (result != null) {
                          countryCode = result;
                          //Now that we have assigned a new value to countryCode, we need to rebuild the screen with setState
                          setState(() {});
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffEFF3F6),
                        ),
                        width: 121,
                        height: 52,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              countryCode,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(CupertinoIcons.chevron_down),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: SizedBox(
                        height: 52,
                        child: TextField(
                          onChanged: (incomingNumber) {
                            phoneNumber = incomingNumber;
                          },
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xffBEC5CB),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            filled: true,
                            fillColor: Color(0xffEFF3F6),
                            hoverColor: Colors.transparent,
                            hintText: 'Enter your phone number',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22),
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff686B6F),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 23),
                SizedBox(
                  height: 52,
                  child: TextField(
                    onChanged: (incomingPassword) {
                      passWord = incomingPassword;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xffBEC5CB),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Color(0xffEFF3F6),
                      hoverColor: Colors.transparent,
                      hintText: '6 digits',
                    ),
                  ),
                ),
                SizedBox(height: 65),
                GestureDetector(
                  onTap: _loginAndMoveToDashboard,
                  child: Container(
                    width: 419,
                    height: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff8497A5),
                    ),
                    alignment: Alignment.center,
                    child: isConfirmButtonPressed
                        ? SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator.adaptive(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          )
                        : Text(
                            'Confirm',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                  ),
                ),
                SizedBox(height: 45),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignIn());
                  },
                  child: Container(
                    width: 419,
                    height: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
