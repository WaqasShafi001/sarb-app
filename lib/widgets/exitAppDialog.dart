import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:sarb_mobile_app/widgets/raisedGradientButton.dart';

class ExitAppDialog extends StatelessWidget {
  const ExitAppDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      actions: [
        ButtonBar(
          alignment: MainAxisAlignment.center,
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          children: [
            RaisedGradientButton(
              height: SizeConfig.blockSizeVertical! * 5,
              width: SizeConfig.blockSizeHorizontal! * 20,
              titleText: 'yes',
              onPressed: () => SystemNavigator.pop(),
            ),
            RaisedGradientButton(
              height: SizeConfig.blockSizeVertical! * 5,
              width: SizeConfig.blockSizeHorizontal! * 20,
              titleText: 'no',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ],
      content: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: SizeConfig.blockSizeVertical! * 10,
          width: SizeConfig.blockSizeHorizontal! * 85,
          color: AppColors.iron,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you sure to want exit from app?',
                textAlign: TextAlign.center,
                style: AppTextStyles.simpleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
