import 'package:financial_dashboard/widgets/card_cloud_middle_item_widget.dart';
import 'package:flutter/material.dart';

class CardCloudMiddleWidget extends StatelessWidget {
  const CardCloudMiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CardCloudMiddleItemWidget(text: '5789'),
        SizedBox(width: 15),
        CardCloudMiddleItemWidget(text: '* * * *'),
        SizedBox(width: 15),
        CardCloudMiddleItemWidget(text: '* * * *'),
        SizedBox(width: 15),
        CardCloudMiddleItemWidget(text: '2847'),
      ],
    );
  }
}
