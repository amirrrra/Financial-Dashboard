import 'package:financial_dashboard/widgets/card_chart_widget.dart';
import 'package:financial_dashboard/widgets/card_cloudcash_widget.dart';
import 'package:flutter/material.dart';

class CardLeftSection extends StatelessWidget {
  const CardLeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardCloudcashWidget(),
        SizedBox(height: 30),
        CardChartWidget(),
      ],
    );
  }
}
