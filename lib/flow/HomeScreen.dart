import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';
import 'package:sarb_mobile_app/widgets/OptionTile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpaceLarge(),
          Card(
            elevation: 3,
            child: Image.asset('images/banner.png'),
          ),
          UIHelper.verticalSpaceLarge(),
          OptionTile(
            iconData: Icons.account_balance_wallet,
            tileTitle: 'Deposit',
          ),
          OptionTile(
            iconData: Icons.account_balance,
            tileTitle: 'Check Balance',
          ),
          OptionTile(
            iconData: Icons.exit_to_app,
            tileTitle: 'Exit',
          ),
        ],
      ),
    );
  }
}
