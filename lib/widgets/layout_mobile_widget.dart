import 'package:financial_dashboard/widgets/header_mobile_widget.dart';
import 'package:financial_dashboard/widgets/section_cards_and_transactions.dart';
import 'package:financial_dashboard/widgets/section_goals_outcome_and_transaction.dart';
import 'package:flutter/material.dart';

class LayoutMobileWidget extends StatelessWidget {
  final void Function()? onTap;

  const LayoutMobileWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMobileWidget(onTap: onTap),
            SizedBox(height: 12),
            SectionCardsAndTransactions(),
            SizedBox(height: 30),
            SectionGoalsOutcomeAndTransaction(),
          ],
        ),
      ),
    );
  }
}
