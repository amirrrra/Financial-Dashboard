import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:financial_dashboard/widgets/transaction_item_widget.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transaction history',
              style: AppStyles.semi22(context),
            ),
            const SizedBox(height: 12),
            TransactionItemWidget()
          ],
        ),
      ),
    );
  }
}
