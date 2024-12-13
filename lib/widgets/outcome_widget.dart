import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/outcome_icon_widget.dart';
import 'package:flutter/material.dart';

class OutcomeWidget extends StatelessWidget {
  const OutcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutcomeIconWidget(
          color: AppColors.orangeSoft,
          icon: AppImages.shoppping,
        ),
        SizedBox(width: 15),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        color: AppColors.orange,
                        minHeight: 10,
                        value: 1 / 2,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      '52%',
                      style: AppStyles.semi24(context),
                    ),
                  ],
                ),
              ),
              Text(
                'Shoppping',
                style: AppStyles.regular14(context),
              )
            ],
          ),
        ),
      ],
    );
  }
}
