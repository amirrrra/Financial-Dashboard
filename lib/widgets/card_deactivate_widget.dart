import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardDeactivateWidget extends StatelessWidget {
  const CardDeactivateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SvgPicture.asset(
          AppImages.deacivateCard,
        ),
        SizedBox(height: 6),
        FittedBox(
          child: Text(
            'Deacivate card',
            style: AppStyles.regular16(context),
          ),
        ),
      ],
    );
  }
}
