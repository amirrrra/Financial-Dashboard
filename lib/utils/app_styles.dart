import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/Constants.dart';
import 'package:financial_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle remaRegular8(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 8),
    );
  }

  static TextStyle remaRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 12),
    );
  }

  static TextStyle remaRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
    );
  }

  static TextStyle remaRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
      color: AppColors.greyAe,
    );
  }

  static TextStyle remaRegular20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
    );
  }

  static TextStyle remaSemi14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle remaSemi20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle remaSemi44(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 44),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle latoBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.bold,
      fontFamily: Constants.lato,
    );
  }

  static TextStyle latoBold8(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 8),
      fontWeight: FontWeight.bold,
      fontFamily: Constants.lato,
      color: AppColors.white,
    );
  }

  static TextStyle latoLight24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
      fontWeight: FontWeight.w300,
      fontFamily: Constants.lato,
      color: AppColors.greyC7,
    );
  }

  static TextStyle latoLight20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 20),
      fontWeight: FontWeight.w300,
      fontFamily: Constants.lato,
      color: AppColors.greyC7,
    );
  }

  static TextStyle latoSemi24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
      fontWeight: FontWeight.w600,
      fontFamily: Constants.lato,
      color: AppColors.grey69,
    );
  }

  static TextStyle latoSemi14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.w600,
      fontFamily: Constants.lato,
    );
  }

  static TextStyle latoMedium7(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 7),
      fontWeight: FontWeight.w500,
      fontFamily: Constants.lato,
      color: AppColors.white,
    );
  }

  static TextStyle latoMedium12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 12),
      fontWeight: FontWeight.w500,
      fontFamily: Constants.lato,
      color: AppColors.white,
    );
  }

  static TextStyle quickMedium21(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 21),
      fontWeight: FontWeight.w500,
      fontFamily: Constants.quicksand,
      color: AppColors.white,
    );
  }

  static TextStyle quickBold11(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 11),
      fontWeight: FontWeight.bold,
      fontFamily: Constants.quicksand,
    );
  }

  static TextStyle quickBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 16),
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
