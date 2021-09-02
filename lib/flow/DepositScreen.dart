import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';
import 'package:sarb_mobile_app/flow/HomeScreen.dart';
import 'package:sarb_mobile_app/widgets/raisedGradientButton.dart';
import 'package:sarb_mobile_app/widgets/textInputField.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.lightGreen,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Deposit',
            style:
                AppTextStyles.simpleText.copyWith(color: AppColors.congoBrown),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: ListView(
              children: [
                UIHelper.verticalSpaceSmall(),
                Card(
                  elevation: 3,
                  child: Image.asset('images/banner.png'),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
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
                TextInputField(
                  cursorColor: AppColors.darkGreen,
                  initialValue: 'Daniel Suiz',
                  prefixIcon: Icon(
                    Icons.person,
                    color: AppColors.darkGreen,
                  ),
                  readOnlyText: true,
                  textColor: AppColors.darkGreen,
                ),
                TextInputField(
                  cursorColor: AppColors.darkGreen,
                  initialValue: '2500 \$',
                  prefixIcon: Icon(
                    Icons.price_check,
                    color: AppColors.darkGreen,
                  ),
                  readOnlyText: true,
                  textColor: AppColors.darkGreen,
                ),
                TextInputField(
                  cursorColor: AppColors.darkGreen,
                  //  initialValue: 'Amount',
                  hint: 'Enter Amount',
                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: AppColors.darkGreen,
                  ),
                  readOnlyText: false,
                  textColor: AppColors.darkGreen,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedGradientButton(
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
                    RaisedGradientButton(
                      width: SizeConfig.blockSizeHorizontal! * 30,
                      height: SizeConfig.blockSizeVertical! * 6.5,
                      titleText: 'Save/Print',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
