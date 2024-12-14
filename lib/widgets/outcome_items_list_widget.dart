import 'package:financial_dashboard/models/outcome_model.dart';
import 'package:financial_dashboard/widgets/outcome_item_widget.dart';
import 'package:flutter/material.dart';

class OutcomeItemsListWidget extends StatelessWidget {
  const OutcomeItemsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (index) {
          return Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: OutcomeItemWidget(
                outcomeModel: OutcomeModel.outcomeList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
