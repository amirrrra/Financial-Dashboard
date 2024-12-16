import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderProfileWidget extends StatelessWidget {
  const HeaderProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(AppImages.mail),
        const SizedBox(width: 16),
        SvgPicture.asset(AppImages.bell),
        const SizedBox(width: 16),
        Row(
          children: [
            SvgPicture.asset(AppImages.admin),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Omar',
                  style: AppStyles.semi16(context),
                ),
                Text(
                  'Admin account',
                  style: AppStyles.regular16(context),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
