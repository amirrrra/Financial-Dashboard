import 'package:financial_dashboard/widgets/goals_widget.dart';
import 'package:financial_dashboard/widgets/new_transaction_widget.dart';
import 'package:financial_dashboard/widgets/outcome_widget.dart';
import 'package:flutter/material.dart';

class SectionGoalsOutcomeAndTransaction extends StatelessWidget {
  const SectionGoalsOutcomeAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        GoalsWidget(),
        OutcomeWidget(),
        NewTransactionWidget(),
      ],
    );
  }
}
