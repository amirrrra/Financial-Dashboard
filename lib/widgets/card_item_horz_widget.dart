import 'package:financial_dashboard/widgets/card_section_cloudcash.dart';
import 'package:financial_dashboard/widgets/card_section_balance.dart';
import 'package:flutter/material.dart';

class CardItemHorzWidget extends StatelessWidget {
  const CardItemHorzWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: CardSectionCloudcash(),
        ),
        SizedBox(width: 20),
        Expanded(
          child: CardSectionBalance(),
        ),
      ],
    );
  }
}
