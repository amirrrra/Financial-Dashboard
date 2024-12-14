import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class NewTransactionTextfieldWidget extends StatelessWidget {
  const NewTransactionTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          hoverColor: AppColors.transparent,
          suffixText: '\$',
          hintText: '0',
          hintStyle: AppStyles.light24(context).copyWith(height: 2.2),
          enabledBorder: getBorder(),
          focusedBorder: getBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder getBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Color(0xFF197BBD),
      ),
    );
  }
}
