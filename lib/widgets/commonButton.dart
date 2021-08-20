import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';

class RaisedGradientButton extends StatelessWidget {
  final String? titleText;
  final Gradient? gradient;
  final double? width;
  final double? height;
  final Function() onPressed;

  const RaisedGradientButton({
    Key? key,
    @required this.titleText,
    this.gradient,
    this.width = double.infinity,
    this.height = 20.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGreen,
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            splashColor: AppColors.iron,
            onTap: onPressed,
            child: Center(
              child: Text(
                titleText!,
                textAlign: TextAlign.center,
                style: AppTextStyles.buttonTextStyle,
              ),
            )),
      ),
    );
  }
}
