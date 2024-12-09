import 'package:financial_dashboard/models/drawer_model.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/widgets/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerBodyWidget extends StatefulWidget {
  const DrawerBodyWidget({super.key});

  @override
  State<DrawerBodyWidget> createState() => _DrawerBodyWidgetState();
}

class _DrawerBodyWidgetState extends State<DrawerBodyWidget> {
  int selectedIndex = 0;

  List<DrawerModel> drawerItems = [
    DrawerModel(title: 'Overview', icon: AppImages.overview),
    DrawerModel(title: 'Transactions', icon: AppImages.transactions),
    DrawerModel(title: 'Cards', icon: AppImages.cards),
    DrawerModel(title: 'Invoices', icon: AppImages.invoices),
    DrawerModel(title: 'Goals', icon: AppImages.goals),
    DrawerModel(title: 'Settings', icon: AppImages.settings),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        6,
        (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: DrawerItemWidget(
              drawerModel: drawerItems[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
