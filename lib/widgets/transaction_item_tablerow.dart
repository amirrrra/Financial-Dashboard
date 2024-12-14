import 'package:financial_dashboard/models/transaction_model.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionItemTablerow {
  TableRow tableRowCells({
    required BuildContext context,
    required TransactionModel transactionModel,
  }) {
    return TableRow(
      children: [
        Row(
          children: [
            SvgPicture.asset(transactionModel.icon),
            const SizedBox(width: 6),
            Text(
              transactionModel.reciever,
              style: AppStyles.medium16(context),
            ),
          ],
        ),
        Text(
          transactionModel.type,
          style: AppStyles.regular16(context).copyWith(
            color: AppColors.greyC6,
          ),
        ),
        Text(
          transactionModel.date,
          style: AppStyles.regular16(context).copyWith(
            color: AppColors.greyC6,
          ),
        ),
        Text(
          transactionModel.amount,
          style: AppStyles.semi16(context).copyWith(color: AppColors.grey3F),
        ),
      ],
    );
  }
}
