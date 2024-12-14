import 'package:financial_dashboard/models/outcome_model.dart';
import 'package:flutter/material.dart';

class OutcomeChartWidget extends StatelessWidget {
  final OutcomeModel outcomeModel;
  const OutcomeChartWidget({super.key, required this.outcomeModel});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: outcomeModel.chartColor,
      minHeight: 10,
      value: outcomeModel.value,
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    );
  }
}
