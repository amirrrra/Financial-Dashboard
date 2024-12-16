import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HeaderTitleWidget extends StatelessWidget {
  const HeaderTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weekly sumup',
          style: AppStyles.semi44(context),
        ),
        Text(
          'Get summary of your weekly online transactions here.',
          style: AppStyles.regular16(context),
        ),
      ],
    );
  }
}
