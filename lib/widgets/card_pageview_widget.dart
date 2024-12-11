import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/card_cloud_and_chart_widget.dart';
import 'package:flutter/material.dart';

class CardPageviewWidget extends StatelessWidget {
  final PageController controller;
  final void Function(int)? onPageChanged;
  const CardPageviewWidget({
    super.key,
    required this.controller,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> colorsDarkList = [
      AppColors.blue,
      AppColors.redDark,
      AppColors.greenDark,
    ];

    final List<Color> colorsLightList = [
      AppColors.blueSky,
      AppColors.red,
      AppColors.greenLight,
    ];

    return ExpandablePageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      onPageChanged: onPageChanged,
      children: List.generate(
        3,
        (index) => CardCloudAndChartWidget(
          colorDark: colorsDarkList[index],
          colorLight: colorsLightList[index],
        ),
      ),
    );
  }
}
