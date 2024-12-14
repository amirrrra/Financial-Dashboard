import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/outcome_items_list_widget.dart';
import 'package:flutter/material.dart';

class OutcomeWidget extends StatelessWidget {
  const OutcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Outcome Statistics',
          style: AppStyles.semi22(context),
        ),
        const SizedBox(height: 12),
        Expanded(child: OutcomeItemsListWidget()),
      ],
    );
  }
}
