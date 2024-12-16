import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/size_config.dart';
import 'package:financial_dashboard/widgets/adaptive_layout.dart';
import 'package:financial_dashboard/widgets/drawer_widget.dart';
import 'package:financial_dashboard/widgets/layout_desktop_widget.dart';
import 'package:financial_dashboard/widgets/layout_mobile_widget.dart';
import 'package:financial_dashboard/widgets/layout_tablet_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      drawer: screenWidth < SizeConfig.tablet ? DrawerWidget() : null,
      backgroundColor: AppColors.white,
      body: AdaptiveLayout(
        mobileLayout: (context) => LayoutMobileWidget(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        tabletLayout: (context) => const LayoutTabletWidget(),
        desktopLayout: (context) => const LayoutDesktopWidget(),
      ),
    );
  }
}
