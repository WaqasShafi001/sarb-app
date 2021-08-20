import 'package:flutter/cupertino.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';

class AppTextStyles {
  static TextStyle inputTextStyle = TextStyle(
    color: AppColors.darkGreen,
    fontSize: 16,
  );

  static TextStyle buttonTextStyle = TextStyle(
    color: AppColors.white.withOpacity(0.85),
    fontSize: 21,
    letterSpacing: 0.8,
    fontWeight: FontWeight.bold,
  );

    static TextStyle simpleText = TextStyle(
    color: AppColors.darkGreen.withOpacity(0.85),

    fontSize: 21,
    letterSpacing: 0.8,
    fontWeight: FontWeight.bold,
  );
}
