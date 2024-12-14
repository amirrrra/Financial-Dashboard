import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewTransactionAddWidget extends StatelessWidget {
  const NewTransactionAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.transparent,
          child: SvgPicture.asset(AppImages.add),
        ),
        Text(
          'Add New',
          style: AppStyles.regular12(context).copyWith(
            color: AppColors.grey3F,
          ),
        )
      ],
    );
  }
}
