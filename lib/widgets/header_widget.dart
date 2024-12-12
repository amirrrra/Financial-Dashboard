import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Weekly sumup',
              style: AppStyles.semi44(context),
            ),
            Text(
              'Get summary of your weekly online transactions here.',
              style: AppStyles.regular16(context),
            ),
          ],
        ),
        
        // Right side content
        Row(
          children: [
            SvgPicture.asset(AppImages.mail),
            const SizedBox(width: 16), // Add some spacing between icons
            SvgPicture.asset(AppImages.bell),
            const SizedBox(width: 16), // Add some spacing before profile
            
            // Profile section
            Row(
              children: [
                SvgPicture.asset(AppImages.admin),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Omar',
                      style: AppStyles.semi16(context).copyWith(
                        color: AppColors.grey3F,
                      ),
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
        )
      ],
    );
  }
}