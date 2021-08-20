import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/flow/HomeScreen.dart';
import 'package:sarb_mobile_app/widgets/webView.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override 
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: WebViewWidget(
        title: 'Website titile',
        initialUrl: 'https://pub.dev/packages/webview_flutter/install',
      ),
    ),
    Container(
      color: Colors.tealAccent,
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        elevation: 3,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: AppColors.congoBrown,
        selectedLabelStyle: AppTextStyles.inputTextStyle,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Website',
            icon: Icon(Icons.language),
          ),
          BottomNavigationBarItem(
            label: 'Feedback',
            icon: Icon(
              Icons.feedback,
            ),
          ),
        ],
      ),
    );
  }
}
