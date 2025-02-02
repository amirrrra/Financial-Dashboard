import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_fitted_box_widget.dart';
import 'package:flutter/material.dart';

class CardChartWidget extends StatelessWidget {
  final Color colorLight;
  const CardChartWidget({super.key, required this.colorLight});

  @override
  Widget build(BuildContext context) {
    return Column(
      //height = 70 (Indicator + SizedBox + Row)
      children: [
        getLinearIndicator(),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CustomFittedBoxWidget(
                child: Text(
                  'Weekly payment limit',
                  style: AppStyles.regular14(context),
                ),
              ),
            ),
            SizedBox(width: 4),
            Flexible(
              child: CustomFittedBoxWidget(
                child: Text(
                  r'$350.60 / $4000',
                  style: AppStyles.semi14(context),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  LinearProgressIndicator getLinearIndicator() {
    return LinearProgressIndicator(
      minHeight: 10,
      borderRadius: BorderRadius.circular(14),
      value: 1 / 5,
      backgroundColor: AppColors.greyF1,
      color: colorLight,
    );
  }
}
