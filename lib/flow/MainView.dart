import 'dart:io';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/flow/HomeScreen.dart';
import 'package:sarb_mobile_app/widgets/doubleBackToCloseApp.dart';
import 'package:sarb_mobile_app/widgets/webView.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PersistentTabController? _controller;
  bool? _hideNavBar;

  void initState() {
    super.initState();

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child:
            WebViewWidget(title: 'Website', initialUrl: 'https://flutter.dev/'),
      ),
      Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: WebViewWidget(
            title: 'Feedback', initialUrl: 'https://flutter.dev/'),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: AppColors.congoBrown,
        inactiveColorPrimary: AppColors.white,
        inactiveColorSecondary: AppColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.language),
        title: 'Website',
        activeColorPrimary: AppColors.congoBrown,
        inactiveColorPrimary: AppColors.white,
        inactiveColorSecondary: AppColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.feedback),
        title: 'Feedback',
        activeColorPrimary: AppColors.congoBrown,
        inactiveColorPrimary: AppColors.white,
        inactiveColorSecondary: AppColors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.fixed,
          //backgroundColor: AppColors.lightGreen,
          content: Text(
            'Tap back again to leave',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        child: PersistentTabView(
          context,
          controller: _controller!,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          resizeToAvoidBottomInset: true,
          backgroundColor: AppColors.lightGreen,
          handleAndroidBackButtonPress: true,
          stateManagement: false,
          navBarHeight: SizeConfig.blockSizeVertical! * 8,
          hideNavigationBarWhenKeyboardShows: true,
          selectedTabScreenContext: (context) {},
          hideNavigationBar: _hideNavBar,
          navBarStyle: NavBarStyle.style6,
          screenTransitionAnimation:
              ScreenTransitionAnimation(animateTabTransition: true),
        ),
      ),
    );
  }
}
