import 'package:financial_dashboard/widgets/header_profile_mobile_widget.dart';
import 'package:financial_dashboard/widgets/header_title_widget.dart';

import 'package:flutter/material.dart';

class HeaderMobileWidget extends StatelessWidget {
  final void Function()? onTap;

  const HeaderMobileWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderProfileMobileWidget(onTap: onTap),
        SizedBox(height: 30),
        HeaderTitleWidget(),
      ],
    );
  }
}
