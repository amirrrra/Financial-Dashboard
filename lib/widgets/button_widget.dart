import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final String icon;
  final double padding;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding:  EdgeInsets.all(padding),
        backgroundColor: AppColors.yellow,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppStyles.quickBold14(context),
          ),
          SvgPicture.asset(icon)
        ],
      ),
    );
  }
}
