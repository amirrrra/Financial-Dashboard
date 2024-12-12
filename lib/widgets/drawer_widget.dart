import 'package:financial_dashboard/widgets/drawer_body_widget.dart';
import 'package:financial_dashboard/widgets/drawer_header_widget.dart';
import 'package:financial_dashboard/widgets/drawer_trailing_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
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
