import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/section_cards_and_transactions.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:financial_dashboard/widgets/section_goals_outcome_and_transaction.dart';
import 'package:financial_dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class LayoutDesktopWidget extends StatelessWidget {
  const LayoutDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        // Drawer
        Expanded(
          flex: 3,
          child: DrawerWidget(),
        ),
        VerticalDivider(
          color: AppColors.greyE8,
        ),
        Expanded(
          flex: 13,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: [
                      // Header
                      HeaderWidget(),
                      SizedBox(height: 40),
                      // 2 sections
                      Expanded(
                        child: Row(
                          children: [
                            // Cards And Transactions Section
                            Expanded(
                              flex: 7,
                              child: SectionCardsAndTransactions(),
                            ),
                            SizedBox(width: 32),
                            // Goals, Outcome And New Transactions Section
                            Expanded(
                              flex: 6,
                              child: SectionGoalsOutcomeAndTransaction(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
