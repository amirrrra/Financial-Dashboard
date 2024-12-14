import 'package:financial_dashboard/models/new_transaction_model.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class NewTransactionItemWidget extends StatelessWidget {
  final NewTransactionModel newTransactionModel;
  const NewTransactionItemWidget(
      {super.key, required this.newTransactionModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(newTransactionModel.image),
          ),
          Text(
            newTransactionModel.name,
            style: AppStyles.regular12(context).copyWith(
              color: AppColors.grey3F,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
