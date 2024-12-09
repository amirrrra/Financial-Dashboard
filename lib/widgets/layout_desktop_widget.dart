import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class LayoutDesktopWidget extends StatelessWidget {
  const LayoutDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: DrawerWidget(),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: AppColors.green,
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            color: AppColors.blueDark,
          ),
        ),
      ],
    );
  }
}
