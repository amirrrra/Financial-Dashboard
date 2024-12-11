import 'package:financial_dashboard/models/transaction_model.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  titles[index],
                  style: AppStyles.regular16(context),
                ),
              );
            },
          ),
        ),
        // Rows + Dividers
        ...clientsList.expand(
          (transactionModel) {
            return [
              // Data row
              tableRowCells(
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

  List<String> get titles => [
        'Reciever',
        'Type',
        'Date',
        'Amount',
      ];

  List<TransactionModel> get clientsList => [
        TransactionModel(
          icon: AppImages.tescoMarket,
          reciever: 'Tesco Market',
          type: 'Shopping',
          date: '13 Dec 2020',
          amount: '\$75.67',
        ),
        TransactionModel(
          icon: AppImages.electromenMarket,
          reciever: 'ElectroMen Market',
          type: 'Shopping',
          date: '14 Dec 2020',
          amount: '\$250.00',
        ),
        TransactionModel(
          icon: AppImages.restaurant,
          reciever: 'Fiorgio Restaurant',
          type: 'Food',
          date: '07 Dec 2020',
          amount: '\$19.50',
        ),
        TransactionModel(
          icon: AppImages.user,
          reciever: 'John Mathew Kayne',
          type: 'Sport',
          date: '06 Dec 2020',
          amount: '\$350',
        ),
        TransactionModel(
          icon: AppImages.user,
          reciever: 'Ann Marlin',
          type: 'Shopping',
          date: '30 Dec 2020',
          amount: '\$430',
        ),
        TransactionModel(
          icon: AppImages.user,
          reciever: 'Ann Marlin',
          type: 'Shopping',
          date: '30 Dec 2020',
          amount: '\$430',
        ),
      ];
}
