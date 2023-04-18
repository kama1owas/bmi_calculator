import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle white35w400 = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteColor,
  );

  static TextStyle white30w500 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: AppColors.greenColor..withOpacity(0.8),
  );
  static TextStyle white70w800 = TextStyle(
    fontSize: 70,
    fontWeight: FontWeight.w800,
    color: AppColors.whiteColor,
  );
  static TextStyle white20w300 = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w300, color: AppColors.whiteColor);
}
