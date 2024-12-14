import 'package:financial_dashboard/models/outcome_model.dart';
import 'package:financial_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OutcomeIconWidget extends StatelessWidget {
    final OutcomeModel outcomeModel;

  const OutcomeIconWidget({super.key, required this.outcomeModel, });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: outcomeModel.iconColor,
        boxShadow: Constants.shadows,
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: SvgPicture.asset(
        outcomeModel.icon,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
