import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:financial_dashboard/models/goals_model.dart';
import 'package:financial_dashboard/widgets/goals_item_widget.dart';
import 'package:flutter/material.dart';

class GoalsItemsListWidget extends StatelessWidget {
  const GoalsItemsListWidget({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: List.generate(
        3,
        (pageIndex) {
          return Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 14,
                    top: 12,
                    bottom: 45,
                    left: 2,
                  ),
                  child: GoalsItemWidget(
                    goalsModel: GoalsModel.goalsList[index],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
