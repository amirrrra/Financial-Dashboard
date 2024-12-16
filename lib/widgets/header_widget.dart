import 'package:financial_dashboard/widgets/header_horz_widget.dart';
import 'package:financial_dashboard/widgets/header_vert_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth >= 800
        ? const HeaderHorzWidget()
        : const HeaderVertWidget();
  }
}
