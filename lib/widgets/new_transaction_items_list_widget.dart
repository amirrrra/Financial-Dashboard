import 'package:financial_dashboard/models/new_transaction_model.dart';
import 'package:financial_dashboard/widgets/new_transaction_add_widget.dart';
import 'package:financial_dashboard/widgets/new_transaction_item_widget.dart';
import 'package:flutter/material.dart';

class NewTransactionItemsListWidget extends StatelessWidget {
  const NewTransactionItemsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            children: List.generate(
              8,
              (index) {
                return Row(
                  children: [
                    NewTransactionItemWidget(
                      newTransactionModel: NewTransactionModel.usersList[index],
                    ),
                    SizedBox(width: 12)
                  ],
                );
              },
            ),
          ),
          NewTransactionAddWidget(),
        ],
      ),
    );
  }
}
