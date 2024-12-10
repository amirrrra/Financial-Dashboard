import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/card_left_section.dart';
import 'package:financial_dashboard/widgets/card_right_section.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cards',
                style: AppStyles.semi22(context),
              ),
              SizedBox(height: 12),
              Expanded(
                child: Row(
                  children: const [
                    Expanded(
                      flex: 3,
                      child: CardLeftSection(),
                    ),
                    VerticalDivider(
                      width: 70,
                      color: AppColors.greyE8,
                    ),
                    CardRightSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
