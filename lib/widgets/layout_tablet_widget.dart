import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:financial_dashboard/widgets/layout_mobile_widget.dart';
import 'package:flutter/material.dart';

class LayoutTabletWidget extends StatelessWidget {
  const LayoutTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DrawerWidget(),
        ),
         VerticalDivider(
          color: AppColors.greyE8,
        ),
        Expanded(
          flex: 3,
          child: LayoutMobileWidget(),
        )
      ],
    );
  }
}
