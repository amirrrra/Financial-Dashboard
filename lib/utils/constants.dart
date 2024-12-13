import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Constants {
  static const quicksand = 'Quicksand';
  static const gilroy = 'Gilroy';
  static const List<BoxShadow> shadows = [
    BoxShadow(
      color: AppColors.blackA,
      blurRadius: 1,
      offset: Offset(0, 0),
    ),
    BoxShadow(
      color: AppColors.blackA,
      blurRadius: 2,
      offset: Offset(0, 2),
    ),
    BoxShadow(
      color: AppColors.blackF,
      blurRadius: 4,
      offset: Offset(0, 4),
    ),
  ];
}
