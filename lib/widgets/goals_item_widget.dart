import 'package:financial_dashboard/models/goals_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalsItemWidget extends StatelessWidget {
  final GoalsModel goalsModel;
  const GoalsItemWidget({super.key, required this.goalsModel});

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
                  '\$${goalsModel.amount}',
                  style: AppStyles.semi24(context),
                ),
                Text(
                  goalsModel.date,
                  style: AppStyles.regular14(context),
                ),
              ],
            ),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(goalsModel.image),
                Text(
                  goalsModel.title,
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
