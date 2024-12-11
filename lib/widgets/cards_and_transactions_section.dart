import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CardsAndTransactionsSection extends StatelessWidget {
  const CardsAndTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weekly sumup',
          style: AppStyles.semi44(context),
        ),
        Text(
          'Get summary of your weekly online transactions here.',
          style: AppStyles.regular16(context),
        ),
        const SizedBox(height: 40),
        Expanded(child: CardWidget()),
        const SizedBox(height: 30),
        Expanded(child: CardWidget()),


      ],
    );
  }
}
