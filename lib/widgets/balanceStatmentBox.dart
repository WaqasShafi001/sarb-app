import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/commons/uiHelper.dart';

class BalanceStatementBox extends StatelessWidget {
  const BalanceStatementBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
            margin: EdgeInsets.all(26),
            color: AppColors.iron,
            child: Container(
              height: SizeConfig.blockSizeVertical! * 30,
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UIHelper.verticalSpaceSmall(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal! * 3),
                    child: Text(
                      'Balance Statement',
                      style: AppTextStyles.simpleText.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          );
  }
}