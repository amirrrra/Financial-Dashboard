import 'package:financial_dashboard/models/transaction_model.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/transaction_item_tablerow.dart';
import 'package:flutter/material.dart';

class TransactionItemWidget extends StatelessWidget {
  const TransactionItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(5),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(3),
        3: FlexColumnWidth(1.5),
      },
      children: [
        // Header row
        TableRow(
          children: List.generate(
            4,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  TransactionModel.titles[index],
                  style: AppStyles.regular16(context),
                ),
              );
            },
          ),
        ),
        // Rows + Dividers
        ...TransactionModel.clientsList.expand(
          (transactionModel) {
            return [
              // Data row
              TransactionItemTablerow().tableRowCells(
                context: context,
                transactionModel: transactionModel,
              ),
              // Divider row
              TableRow(
                children: List.generate(
                  4,
                  (index) => const Divider(
                    color: AppColors.greyE8,
                    height: 24,
                  ),
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}
