import 'package:financial_dashboard/widgets/adaptive_layout.dart';
import 'package:financial_dashboard/widgets/layout_desktop_widget.dart';
import 'package:financial_dashboard/widgets/layout_mobile_widget.dart';
import 'package:financial_dashboard/widgets/layout_tablet_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const LayoutMobileWidget(),
        tabletLayout: (context) => const LayoutTabletWidget(),
        desktopLayout: (context) => const LayoutDesktopWidget(),
      ),
    );
  }
}
