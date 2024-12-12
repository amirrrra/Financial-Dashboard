import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/Constants.dart';
import 'package:financial_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle regular9(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 9),
      color: AppColors.white,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 12),
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      color: AppColors.greyAe,
    );
  }
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      color: AppColors.greyAe,
    );
  }

  static TextStyle regular17(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 17),
      color: AppColors.greyAe,
    );
  }
  static TextStyle regular20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      color: AppColors.grey3F,
    );
  }
  static TextStyle bold17(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 17),
      color: AppColors.grey3F,
      fontWeight: FontWeight.bold
    );
  }
  static TextStyle semi17(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 17),
      color: AppColors.grey3F,
      fontWeight: FontWeight.w600
    );
  }

  static TextStyle semi16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semi22(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 22),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semi44(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 44),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semi24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
      fontWeight: FontWeight.w600,
      color: AppColors.grey69,
    );
  }

  static TextStyle bold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.bold,
      color: AppColors.greyC7,
    );
  }

  static TextStyle bold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 12),
      fontWeight: FontWeight.bold,
      color: AppColors.white.withOpacity(0.4),
    );
  }

  static TextStyle semi30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 25),
      fontWeight: FontWeight.w600,
      color: AppColors.blue,
    );
  }

  static TextStyle semi40(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 40),
      fontWeight: FontWeight.w600,
      color: AppColors.blue,
    );
  }

  static TextStyle light24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
      fontWeight: FontWeight.w300,
      color: AppColors.greyC7,
    );
  }

  static TextStyle light20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.w300,
      color: AppColors.greyC7,
    );
  }

  static TextStyle medium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    );
  }
  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      fontWeight: FontWeight.w500,
      color: AppColors.grey3F,
    );
  }

  static TextStyle quickMedium24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
      fontWeight: FontWeight.w500,
      fontFamily: Constants.quicksand,
      color: AppColors.white,
    );
  }

  static TextStyle quickBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle quickBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.bold,
      fontFamily: Constants.quicksand,
      color: AppColors.white,
    );
  }
}

double getResponsiveFontSize(BuildContext context, double fontSize) {
  var scaleFactor = getScaleFactor(context);
  var responsiveFontSize = fontSize * scaleFactor;
  var lowerLimit = fontSize * .8;
  var upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit); //Apply limitations
}

double getScaleFactor(BuildContext context) {
  final double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.tablet) {
    return screenWidth / 550; // Mobile Scale Factor
  } else if (screenWidth < SizeConfig.desktop) {
    return screenWidth / 1000; // Tablet Scale Factor
  } else {
    return screenWidth / 1800; // Desktop Scale Factor
  }
}
