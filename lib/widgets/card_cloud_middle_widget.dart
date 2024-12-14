import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardCloudMiddleWidget extends StatelessWidget {
  const CardCloudMiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        '5789''    ''* * * *''    ''* * * *''    ''2847',
        style: AppStyles.quickMedium20(context),
      ),
    );
    // return Row(
    //   children: [
    //     getCodeStyle(context, text: '5789'),
    //     SizedBox(width: 15),
    //     getCodeStyle(context, text: '* * * *'),
    //     SizedBox(width: 15),
    //     getCodeStyle(context, text: '* * * *'),
    //     SizedBox(width: 15),
    //     getCodeStyle(context, text: '2847'),
    //   ],
    // );
  }

  // Text getCodeStyle(
  //   BuildContext context, {
  //   required String text,
  // }) {
  //   return Text(
  //     text,
  //     style: AppStyles.quickMedium24(context),
  //   );
  // }
}
