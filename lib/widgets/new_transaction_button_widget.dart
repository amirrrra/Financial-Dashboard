import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewTransactionButtonWidget extends StatelessWidget {
  const NewTransactionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 36,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text(
              'Send the transfer',
              style: AppStyles.regular12(context).copyWith(color: AppColors.grey3F),
            ),
            SvgPicture.asset(AppImages.send)
          ],
        ),
      ),
    );
  }
}
