import 'package:financial_dashboard/widgets/header_profile_widget.dart';
import 'package:financial_dashboard/widgets/header_title_widget.dart';
import 'package:flutter/material.dart';

class HeaderHorzWidget extends StatelessWidget {
  const HeaderHorzWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: HeaderTitleWidget()),
        HeaderProfileWidget(),
      ],
    );
  }
}
