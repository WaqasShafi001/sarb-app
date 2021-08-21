import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';
import 'package:sarb_mobile_app/flow/HomeScreen.dart';
import 'package:sarb_mobile_app/widgets/balanceStatmentBox.dart';
import 'package:sarb_mobile_app/widgets/raisedGradientButton.dart';
import 'package:sarb_mobile_app/widgets/textInputField.dart';

class CheckBalanceScreen extends StatelessWidget {
  const CheckBalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Balance',
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
          UIHelper.verticalSpaceMedium(),
          UIHelper.verticalSpaceSmall(),
          TextInputField(
            cursorColor: AppColors.darkGreen,
            initialValue: '002145454858748',
            prefixIcon: Icon(
              Icons.account_box,
              color: AppColors.darkGreen,
            ),
            readOnlyText: true,
            textColor: AppColors.darkGreen,
          ),
          UIHelper.verticalSpaceMedium(),
          BalanceStatementBox(),
          UIHelper.verticalSpaceMedium(),
          Row(
            children: [
              UIHelper.horizontalSpaceMedium(),
              SizedBox(
                width: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RaisedGradientButton(
                  width: SizeConfig.blockSizeHorizontal! * 30,
                  height: SizeConfig.blockSizeVertical! * 6.5,
                  titleText: 'Back',
                  onPressed: () => pushNewScreen(
                    context,
                    screen: HomeScreen(),
                    pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                    withNavBar: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
