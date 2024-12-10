import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardCloudMiddleItemWidget extends StatelessWidget {
  final String text;
  const CardCloudMiddleItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.quickMedium24(context),
    );
  }
}
