import 'package:device_preview/device_preview.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/constants.dart';
import 'package:financial_dashboard/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const FinancialDashboard(),
    ),
  );
}

class FinancialDashboard extends StatelessWidget {
  const FinancialDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: Constants.gilroy,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
