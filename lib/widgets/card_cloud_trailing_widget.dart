import 'package:financial_dashboard/widgets/card_cloud_trailing_item_widget.dart';
import 'package:flutter/material.dart';

class CardCloudTrailingWidget extends StatelessWidget {
  const CardCloudTrailingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CardCloudTrailingItemWidget(
          title: 'Card holder',
          subTitle: 'Mike Smith',
        ),
        Spacer(flex: 1),
        CardCloudTrailingItemWidget(
          title: 'Expire date',
          subTitle: '06/21',
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
