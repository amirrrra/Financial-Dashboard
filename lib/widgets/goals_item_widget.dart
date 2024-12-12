import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalsItemWidget extends StatelessWidget {
  const GoalsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$550',
                  style: AppStyles.semi24(context),
                ),
                Text(
                  '12/20/20',
                  style: AppStyles.regular14(context),
                ),
              ],
            ),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AppImages.holidays),
                Text(
                  'Holidays',
                  style: AppStyles.regular20(context),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
