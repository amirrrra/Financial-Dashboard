import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/card_balance_item_widget.dart';
import 'package:financial_dashboard/widgets/card_deactivate_widget.dart';
import 'package:flutter/material.dart';

class CardRightSection extends StatelessWidget {
  const CardRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        CardBalanceItemWidget(
          textStyle: AppStyles.semi40(context),
          value: '2850.75',
          balance: 'Current balance',
        ),
        CardBalanceItemWidget(
          value: '1500.50',
          balance: 'Income',
          color: AppColors.green,
        ),
        CardBalanceItemWidget(
          value: '350.60',
          balance: 'Outcome',
          color: AppColors.red,
        ),
        CardDeactivateWidget(),
      ],
    );
  }
}
