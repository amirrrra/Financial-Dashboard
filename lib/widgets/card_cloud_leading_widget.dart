import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardCloudLeadingWidget extends StatelessWidget {
  const CardCloudLeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'cloudcash',
          style: AppStyles.quickBold24(context),
        ),
        Text(
          'PREMIUM ACCOUNT',
          style: AppStyles.bold14(context).copyWith(
            color: AppColors.white.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
