import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/card_cloudcash_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            'Cards',
            style: AppStyles.semi20(context),
          ),
          Row(
            children: [
              const Expanded(
                flex: 2,
                child: CardCloudcashWidget(),
              ),
              const VerticalDivider(),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\$',
                            style: AppStyles.bold18(context),
                          ),
                          TextSpan(
                            text: ' 2850.75',
                            style: AppStyles.bold30(context),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Current balance',
                      style: AppStyles.regular14(context),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
