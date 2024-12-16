import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardCloudTrailingItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const CardCloudTrailingItemWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.regular13(context),
        ),
        Text(
          subTitle,
          style: AppStyles.medium16(context).copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
