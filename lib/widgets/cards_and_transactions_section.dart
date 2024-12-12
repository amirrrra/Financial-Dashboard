import 'package:financial_dashboard/widgets/card_widget.dart';
import 'package:financial_dashboard/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class CardsAndTransactionsSection extends StatelessWidget {
  const CardsAndTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(child: CardWidget()),
        SizedBox(height: 30),
        Expanded(child: TransactionWidget()),
      ],
    );
  }
}
