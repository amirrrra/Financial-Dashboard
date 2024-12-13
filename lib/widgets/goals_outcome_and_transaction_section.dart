import 'package:financial_dashboard/widgets/goals_widget.dart';
import 'package:financial_dashboard/widgets/outcome_widget.dart';
import 'package:flutter/material.dart';

class GoalsOutcomeAndTransactionSection extends StatelessWidget {
  const GoalsOutcomeAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: GoalsWidget()),
        Flexible(child: OutcomeWidget()),
        Flexible(child: OutcomeWidget()),
        Flexible(child: OutcomeWidget()),
      ],
    );
  }
}
