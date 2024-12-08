import 'package:financial_dashboard/widgets/drawer_header_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        DrawerHeaderWidget(),
        SizedBox(height: 80),

      ],
    );
  }
}
