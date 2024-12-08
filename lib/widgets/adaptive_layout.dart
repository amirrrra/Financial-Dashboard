import 'package:financial_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        }
        if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        }
        else {
          return desktopLayout(context);
        }

      },
    );
  }
}
