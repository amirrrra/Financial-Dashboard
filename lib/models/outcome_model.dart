import 'dart:ui';

import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';

class OutcomeModel {
  final Color iconColor;
  final String icon;
  final Color chartColor;
  final double value;
  final String rate;
  final String title;

  const OutcomeModel({
    required this.iconColor,
    required this.icon,
    required this.chartColor,
    required this.value,
    required this.rate,
    required this.title,
  });

  static const List<OutcomeModel> outcomeList = [
    OutcomeModel(
      iconColor: AppColors.orangeSoft,
      icon: AppImages.shoppping,
      chartColor: AppColors.orange,
      value: 52 / 100,
      rate: '52%',
      title: 'Shopping',
    ),
    OutcomeModel(
      iconColor: AppColors.greenSoft,
      icon: AppImages.electronics,
      chartColor: AppColors.green,
      value: 21 / 100,
      rate: '21%',
      title: 'Electronics',
    ),
    OutcomeModel(
      iconColor: AppColors.blueSoft,
      icon: AppImages.travels,
      chartColor: AppColors.blue,
      value: 74 / 100,
      rate: '74%',
      title: 'Travels',
    ),
  ];
}
