import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:financial_dashboard/widgets/header_widget.dart';
import 'package:financial_dashboard/widgets/section_cards_and_transactions.dart';
import 'package:financial_dashboard/widgets/section_goals_outcome_and_transaction.dart';
import 'package:flutter/material.dart';

class LayoutTabletWidget extends StatelessWidget {
  const LayoutTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DrawerWidget(),
        ),
         VerticalDivider(
          color: AppColors.greyE8,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
                  padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  HeaderWidget(),
                  SizedBox(height: 40),
                  SectionCardsAndTransactions(),
                  SizedBox(height: 30),
                  SectionGoalsOutcomeAndTransaction(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
