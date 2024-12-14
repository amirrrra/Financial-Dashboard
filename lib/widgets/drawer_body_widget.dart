import 'package:financial_dashboard/models/drawer_model.dart';
import 'package:financial_dashboard/widgets/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerBodyWidget extends StatefulWidget {
  const DrawerBodyWidget({super.key});

  @override
  State<DrawerBodyWidget> createState() => _DrawerBodyWidgetState();
}

class _DrawerBodyWidgetState extends State<DrawerBodyWidget> {
  int selectedIndex = 0;

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
              drawerModel: DrawerModel.drawerItems[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
