import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/cards_and_transactions_section.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class LayoutDesktopWidget extends StatelessWidget {
  const LayoutDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: DrawerWidget(),
        ),
        // SizedBox(width: 45),
         VerticalDivider(
          color: AppColors.greyE8,
        ),
        Expanded(
          flex: 13,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 7,
                      child: Padding(
                        padding: EdgeInsets.all(32),
                        child: CardsAndTransactionsSection(),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        color: AppColors.blueDark,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
