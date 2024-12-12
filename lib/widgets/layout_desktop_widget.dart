import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/cards_and_transactions_section.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:financial_dashboard/widgets/goals_widget.dart';
import 'package:financial_dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class LayoutDesktopWidget extends StatelessWidget {
  const LayoutDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        // Drawwer
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
                              child: CardsAndTransactionsSection(),
                            ),
                            SizedBox(width: 22),
                            // Goals, Outcome And New Transactions Section
                            Expanded(
                              flex: 6,
                              child: GoalsWidget(),
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
