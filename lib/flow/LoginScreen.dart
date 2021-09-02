import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:sarb_mobile_app/widgets/raisedGradientButton.dart';
import 'package:sarb_mobile_app/widgets/textInputField.dart';

import 'MainView.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.08,
                ),
                Center(
                  child: Hero(
                    tag: 'applogo',
                    transitionOnUserGestures: true,
                    child: Image.asset(
                      'images/sarblogo.png',
                      height: constraints.maxHeight * 0.22,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome',
                    style: AppTextStyles.simpleText,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.015,
                ),
                TextInputField(
                  hint: 'Username',
                  textColor: AppColors.darkGreen,
                  inputType: TextInputType.name,
                  validation: true,
                  validationErrorMsg: 'Please enter your username',
                  textInputAction: TextInputAction.next,
                  prefixIcon: Icon(
                    Icons.person,
                    color: AppColors.darkGreen,
                  ),
                  cursorColor: AppColors.darkGreen,
                ),
                TextInputField(
                  hint: 'Password',
                  textColor: AppColors.darkGreen,
                  inputType: TextInputType.visiblePassword,
                  validation: true,
                  validationErrorMsg: 'Please enter your password',
                  textInputAction: TextInputAction.done,
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: AppColors.darkGreen,
                  ),
                  cursorColor: AppColors.darkGreen,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.06,
                ),
                RaisedGradientButton(
                  width: SizeConfig.blockSizeHorizontal! * 86,
                  height: SizeConfig.blockSizeHorizontal! * 13,
                  titleText: 'LOGIN',
                  onPressed: () {
                    Get.to(() => MainView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
