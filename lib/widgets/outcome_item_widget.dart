import 'package:financial_dashboard/models/outcome_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/outcome_chart_widget.dart';
import 'package:financial_dashboard/widgets/outcome_icon_widget.dart';
import 'package:flutter/material.dart';

class OutcomeItemWidget extends StatelessWidget {
  final OutcomeModel outcomeModel;
  const OutcomeItemWidget({super.key, required this.outcomeModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutcomeIconWidget(
          outcomeModel: outcomeModel,
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
                      child: OutcomeChartWidget(
                        outcomeModel: outcomeModel,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      outcomeModel.rate,
                      style: AppStyles.semi24(context),
                    ),
                  ],
                ),
              ),
              Text(
                outcomeModel.title,
                style: AppStyles.regular14(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
