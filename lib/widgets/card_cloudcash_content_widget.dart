import 'package:financial_dashboard/widgets/card_cloud_leading_widget.dart';
import 'package:financial_dashboard/widgets/card_cloud_middle_widget.dart';
import 'package:financial_dashboard/widgets/card_cloud_trailing_widget.dart';
import 'package:flutter/material.dart';

class CardCloudcashContentWidget extends StatelessWidget {
  const CardCloudcashContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardCloudLeadingWidget(),
        CardCloudMiddleWidget(),
        CardCloudTrailingWidget(),
      ],
    );
  }
}
