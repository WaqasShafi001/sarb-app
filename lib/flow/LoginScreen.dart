import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:sarb_mobile_app/widgets/raisedGradientButton.dart';
import 'package:sarb_mobile_app/widgets/textInputField.dart';

import 'HomeScreen.dart';
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
              children: [
                UIHelper.verticalSpaceLarge(),
                UIHelper.verticalSpaceMedium(),
                UIHelper.verticalSpaceSmall(),
                Center(
                  child: Hero(
                    tag: 'applogo',
                    transitionOnUserGestures: true,
                    child: Image.asset(
                      'images/sarblogo.png',
                    ),
                  ),
                ),
                UIHelper.verticalSpaceMedium(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome',
                    style: AppTextStyles.simpleText,
                  ),
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
                UIHelper.verticalSpaceMedium(),
                UIHelper.verticalSpaceLarge(),
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
