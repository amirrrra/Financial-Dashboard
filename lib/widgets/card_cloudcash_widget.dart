import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/widgets/card_cloud_leading_widget.dart';
import 'package:financial_dashboard/widgets/card_cloud_middle_widget.dart';
import 'package:financial_dashboard/widgets/card_cloud_trailing_widget.dart';
import 'package:flutter/material.dart';

class CardCloudcashWidget extends StatelessWidget {
  const CardCloudcashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 320 / 206,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: [AppColors.blue, AppColors.blueSky],
          ),
          image: DecorationImage(
            image: AssetImage(AppImages.cloudcard),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardCloudLeadingWidget(),
            CardCloudMiddleWidget(),
            CardCloudTrailingWidget(),
          ],
        ),
      ),
    );
  }
}
