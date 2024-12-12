import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/goals_items_list_widget.dart';
import 'package:flutter/material.dart';

class GoalsWidget extends StatelessWidget {
  const GoalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          'Goals',
          style: AppStyles.semi22(context),
        ),
        const GoalsItemsListWidget(),
      ],
    );
  }
}
