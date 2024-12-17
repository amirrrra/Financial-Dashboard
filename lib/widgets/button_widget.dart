import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/custom_fitted_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final String icon;
  final double horizontalPadding;
  final double buttonheight;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.horizontalPadding,
    required this.buttonheight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size.fromHeight(buttonheight),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
        ),
        backgroundColor: AppColors.yellow,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: CustomFittedBoxWidget(
              child: Text(
                text,
                style: AppStyles.bold14(context).copyWith(
                  color: AppColors.grey3F,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8), 
          SvgPicture.asset(icon),
        ],
      ),
    );
  }
}
