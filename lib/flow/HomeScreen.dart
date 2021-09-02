import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';
import 'package:sarb_mobile_app/flow/AccVerificationScreen.dart';
import 'package:sarb_mobile_app/widgets/OptionTile.dart';
import 'package:sarb_mobile_app/widgets/exitAppDialog.dart';

import 'CheckBalanceScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'SARB',
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
          OptionTile(
            iconData: Icons.account_balance_wallet,
            tileTitle: 'Deposit',
            onTap: () => pushNewScreen(
              context,
              screen: DepositVerificationScreen(),
              pageTransitionAnimation: PageTransitionAnimation.sizeUp,
              withNavBar: true,
            ),
          ),
          OptionTile(
            iconData: Icons.account_balance,
            tileTitle: 'Check Balance',
            onTap: () => pushNewScreen(
              context,
              pageTransitionAnimation: PageTransitionAnimation.fade,
              screen: CheckBalanceScreen(),
              withNavBar: true,
            ),
          ),
          OptionTile(
            iconData: Icons.exit_to_app,
            tileTitle: 'Exit',
            onTap: () => showDialog(
              context: context,
              builder: (context) => ExitAppDialog(),
            ),
          ),
        ],
      ),
    );
  }
}
