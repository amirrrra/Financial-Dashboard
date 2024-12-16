import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.cloudcash,
          fit: BoxFit.scaleDown,
          height: 50,
          width: 50,
        ),
        Text(
          'cloudcash',
          style: AppStyles.quickBold20(context),
        ),
      ],
    );
  }
}
