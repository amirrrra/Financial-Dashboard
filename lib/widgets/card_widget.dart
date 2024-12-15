import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/card_left_section.dart';
import 'package:financial_dashboard/widgets/card_right_section.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cards',
              style: AppStyles.semi22(context),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CardLeftSection(),
                ),
                SizedBox(width: 20), 
                Expanded(
                  child: CardRightSection(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
