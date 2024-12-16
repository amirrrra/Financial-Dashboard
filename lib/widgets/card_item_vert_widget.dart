import 'package:financial_dashboard/widgets/card_section_cloudcash.dart';
import 'package:financial_dashboard/widgets/card_section_balance.dart';
import 'package:flutter/material.dart';

class CardItemVertWidget extends StatelessWidget {
  const CardItemVertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CardSectionCloudcash(),
        SizedBox(height: 20),
        CardSectionBalance(),
      ],
    );
  }
}
