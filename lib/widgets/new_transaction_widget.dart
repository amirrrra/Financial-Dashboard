import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class NewTransactionWidget extends StatelessWidget {
  const NewTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Outcome Statistics',
          style: AppStyles.semi22(context),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImages.user1),
                ),
                Text(
                  'Ann',
                  style: AppStyles.regular12(context).copyWith(
                    color: AppColors.grey3F,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
