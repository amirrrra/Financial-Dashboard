import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerTrailingWidget extends StatelessWidget {
  const DrawerTrailingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(AppImages.premium),
        const SizedBox(height: 8),
        Text(
          'Give your money\nawesome space in cloud',
          style: AppStyles.regular12(context).copyWith(
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const ButtonWidget(
          text: 'Upgrade to premium',
          icon: AppImages.upgrade,
          horizontalPadding: 18,
          verticalPadding: 22,
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
