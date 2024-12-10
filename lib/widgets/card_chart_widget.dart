import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardChartWidget extends StatelessWidget {
  const CardChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getLinearIndicator(),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Weekly payment limit',
              style: AppStyles.regular16(context),
            ),
            Text(
              r'$350.60 / $4000',
              style: AppStyles.semi16(context),
            ),
          ],
        ),
      ],
    );
  }

  LinearProgressIndicator getLinearIndicator() {
    return LinearProgressIndicator(
      minHeight: 10,
      
      borderRadius: BorderRadius.circular(14),
      value: 1 / 5,
      backgroundColor: AppColors.greyF1,
      color: AppColors.blue,
    );
  }
}
