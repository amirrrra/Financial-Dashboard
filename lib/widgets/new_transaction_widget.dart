import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:financial_dashboard/widgets/new_transaction_items_list_widget.dart';
import 'package:financial_dashboard/widgets/new_transaction_textfield_widget.dart';
import 'package:flutter/material.dart';

class NewTransactionWidget extends StatelessWidget {
  const NewTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Transaction',
              style: AppStyles.semi22(context),
            ),
            SizedBox(height: 15),
            NewTransactionItemsListWidget(),
            SizedBox(height: 15),
            NewTransactionTextfieldWidget()
          ],
        ),
      ),
    );
  }
}
