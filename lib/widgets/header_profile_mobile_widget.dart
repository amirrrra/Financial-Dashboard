import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderProfileMobileWidget extends StatelessWidget {
  final void Function()? onTap;

  const HeaderProfileMobileWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.menu,
                color: AppColors.greyE3,
                size: 25,
              ),
            ),
            const SizedBox(width: 16),
            SvgPicture.asset(AppImages.mail),
            const SizedBox(width: 16),
            SvgPicture.asset(AppImages.bell),
          ],
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Omar Gamal',
                  style: AppStyles.semi16(context),
                ),
                Text(
                  'Admin',
                  style: AppStyles.regular16(context),
                ),
              ],
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(AppImages.admin),
          ],
        ),
      ],
    );
  }
}
