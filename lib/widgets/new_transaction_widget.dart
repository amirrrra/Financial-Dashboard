import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/button_widget.dart';
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
            const SizedBox(height: 15),
            const NewTransactionItemsListWidget(),
            const SizedBox(height: 15),
            const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: NewTransactionTextfieldWidget(),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ButtonWidget(
                    text: 'Send Transfer',
                    icon: AppImages.send,
                    horizontalPadding: 14,
                    verticalPadding: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
