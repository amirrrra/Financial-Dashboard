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
          style: AppStyles.quickBold20(context),
        ),
        Text(
          'PREMIUM ACCOUNT',
          style: AppStyles.bold12(context),
        ),
      ],
    );
  }
}
