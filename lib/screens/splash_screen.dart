import 'dart:async';

import 'package:flutter/material.dart';
import 'package:radio_app/screens/onboard/onboard_screen.dart';
import 'package:radio_app/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateScreen();
  }

  void _navigateScreen() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (BuildContext context) => const OnboardScreen(),
          ),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/xLogo.png",
          width: Dimensions.widthSize * 9,
          height: Dimensions.heightSize * 6.5,
          alignment: Alignment.center,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
