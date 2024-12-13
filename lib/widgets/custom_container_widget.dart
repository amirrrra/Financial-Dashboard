import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final Widget? child;
  const CustomContainerWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: Constants.shadows,
        borderRadius: BorderRadius.all(Radius.circular(28)),
        gradient: const LinearGradient(
          colors: [AppColors.white, AppColors.white],
        ),
      ),
      child: child,
    );
  }
}
