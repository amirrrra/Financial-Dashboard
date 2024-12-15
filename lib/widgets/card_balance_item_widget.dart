import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardBalanceItemWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final String value;
  final String balance;
  final Color? color;
  const CardBalanceItemWidget({
    super.key,
    this.textStyle,
    required this.value,
    required this.balance,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FittedBox(
          child: Row(
            children: [
              Text(
                '\$',
                style: AppStyles.semi30(context).copyWith(color: color),
              ),
              Text(
                ' $value',
                style: textStyle ??
                    AppStyles.semi30(context).copyWith(color: color),
              ),
            ],
          ),
        ),
        FittedBox(
          child: Text(
            balance,
            style: AppStyles.regular16(context),
          ),
        ),
      ],
    );
  }
}
