import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final Widget? child;
  const CustomContainerWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: shadows,
        borderRadius: BorderRadius.all(Radius.circular(28)),
        gradient: const LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: [AppColors.white, AppColors.white],
        ),
      ),
      child: child,
    );
  }

  List<BoxShadow> get shadows => const [
        BoxShadow(
          color: AppColors.blackA,
          blurRadius: 1,
          offset: Offset(0, 0),
        ),
        BoxShadow(
          color: AppColors.blackA,
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
        BoxShadow(
          color: AppColors.blackF,
          blurRadius: 24,
          offset: Offset(0, 16),
        ),
      ];
}
