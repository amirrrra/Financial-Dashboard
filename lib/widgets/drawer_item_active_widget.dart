import 'package:financial_dashboard/models/drawer_model.dart';
import 'package:financial_dashboard/utils/app_colors.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItemActiveWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  const DrawerItemActiveWidget({super.key, required this.drawerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.iceF,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          drawerModel.icon,
          colorFilter: const ColorFilter.mode(
            AppColors.blue,
            BlendMode.srcIn,
          ),
        ),
        title: Text(
          drawerModel.title,
          style: AppStyles.latoBold14(context).copyWith(
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
