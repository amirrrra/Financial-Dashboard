import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardCloudMiddleWidget extends StatelessWidget {
  const CardCloudMiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        '5789' '    ' '* * * *' '    ' '* * * *' '    ' '2847',
        style: AppStyles.quickMedium28(context),
      ),
    );
  }
}
