import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/widgets/drawer_body_widget.dart';
import 'package:financial_dashboard/widgets/drawer_header_widget.dart';
import 'package:financial_dashboard/widgets/drawer_trailing_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: screenWidth * .8,
      color: AppColors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 40),
                DrawerHeaderWidget(),
                SizedBox(height: 56),
                DrawerBodyWidget(),
                SizedBox(height: 56),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: DrawerTrailingWidget(),
          )
        ],
      ),
    );
  }
}
