import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';

class OptionTile extends StatelessWidget {
  final String? tileTitle;
  final IconData? iconData;
  final Function() onTap;

  const OptionTile(
      {Key? key, this.tileTitle, this.iconData, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.iron,
      child: Card(
        elevation: 3,
        child: Container(
          height: SizeConfig.blockSizeVertical! * 8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.lightGreen,
                AppColors.darkGreen,
                AppColors.iron,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [0.10, 1, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.lightGreen,
                offset: Offset(0.0, 1.5),
                blurRadius: 1.5,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Icon(
                    iconData,
                    color: AppColors.congoBrown,
                    size: 35,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  child: Text(
                    tileTitle!,
                    style: AppTextStyles.simpleText
                        .copyWith(color: AppColors.congoBrown),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
