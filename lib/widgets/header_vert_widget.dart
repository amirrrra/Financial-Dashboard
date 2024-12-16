import 'package:financial_dashboard/widgets/header_profile_mobile_widget.dart';
import 'package:financial_dashboard/widgets/header_title_widget.dart';
import 'package:flutter/material.dart';

class HeaderVertWidget extends StatelessWidget {
  const HeaderVertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderProfileMobileWidget(),
        SizedBox(height: 30),
        HeaderTitleWidget(),
      ],
    );
  }
}
