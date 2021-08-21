import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';
import 'package:sarb_mobile_app/widgets/raisedGradientButton.dart';
import 'package:sarb_mobile_app/widgets/textInputField.dart';

import 'DepositScreen.dart';

class DepositVerificationScreen extends StatelessWidget {
  const DepositVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Verification',
          style: AppTextStyles.simpleText.copyWith(color: AppColors.congoBrown),
        ),
      ),
      body: Column(
        children: [
          UIHelper.verticalSpaceSmall(),
          Card(
            elevation: 3,
            child: Image.asset('images/banner.png'),
          ),
          UIHelper.verticalSpaceLarge(),
          UIHelper.verticalSpaceLarge(),
          TextInputField(
            readOnlyText: false,
            cursorColor: AppColors.darkGreen,
            hint: 'Account Number',
            textInputAction: TextInputAction.done,
            prefixIcon: Icon(
              Icons.account_box,
              color: AppColors.darkGreen,
            ),
          ),
          UIHelper.verticalSpaceMedium(),
          RaisedGradientButton(
              titleText: 'VERIFY',
              width: SizeConfig.blockSizeHorizontal! * 86,
              height: SizeConfig.blockSizeHorizontal! * 13,
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());

                pushNewScreen(
                  context,
                  screen: DepositScreen(),
                  pageTransitionAnimation: PageTransitionAnimation.fade,
                  withNavBar: true,
                );
              })
        ],
      ),
    );
  }
}
