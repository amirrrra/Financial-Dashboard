import 'package:financial_dashboard/models/drawer_model.dart';
import 'package:financial_dashboard/widgets/drawer_item_active_widget.dart';
import 'package:financial_dashboard/widgets/drawer_item_inactive_widget.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  final bool isSelected;
  const DrawerItemWidget({
    super.key,
    required this.drawerModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? DrawerItemActiveWidget(drawerModel: drawerModel)
        : DrawerItemInactiveWidget(drawerModel: drawerModel);
  }
}
