import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinancialDashboard());
}

class FinancialDashboard extends StatelessWidget {
  const FinancialDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: Constants.supreme,
          ),
        ),
      ),
    );
  }
}
