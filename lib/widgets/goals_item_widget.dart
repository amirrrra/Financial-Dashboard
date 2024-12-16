import 'package:financial_dashboard/models/goals_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:financial_dashboard/widgets/custom_fitted_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalsItemWidget extends StatelessWidget {
  final GoalsModel goalsModel;
  const GoalsItemWidget({super.key, required this.goalsModel});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30, 
              child: CustomFittedBoxWidget(
                child: Text(
                  '\$${goalsModel.amount}',
                  style: AppStyles.semi24(context),
                ),
              ),
            ),
            SizedBox(
              height: 20, 
              child: CustomFittedBoxWidget(
                child: Text(
                  goalsModel.date,
                  style: AppStyles.regular14(context),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SvgPicture.asset(goalsModel.image),
            SizedBox(
              height: 25, 
              child: CustomFittedBoxWidget(
                child: Text(
                  goalsModel.title,
                  style: AppStyles.regular20(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
