import 'package:financial_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OutcomeIconWidget extends StatelessWidget {
  final Color color;
  final String icon;
  const OutcomeIconWidget({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: color,
        boxShadow: Constants.shadows,
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: SvgPicture.asset(
        icon,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
