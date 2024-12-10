import 'package:financial_dashboard/models/drawer_model.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItemInactiveWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  const DrawerItemInactiveWidget({super.key, required this.drawerModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerModel.icon,
      ),
      title: Text(
        drawerModel.title,
        style: AppStyles.bold14(context),
      ),
    );
  }
}
