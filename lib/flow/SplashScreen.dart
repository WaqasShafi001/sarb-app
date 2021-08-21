import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //   Duration(seconds: 3),
    //   () => Get.to(
    //     () => LoginScreen(),
    //   ),
    // );

    Future.delayed(
      Duration(seconds: 2),
      () => Get.to(
        () => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Center(
            child: Hero(
              tag: 'applogo',
              transitionOnUserGestures: true,
              child: Image.asset(
                'images/sarblogo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
