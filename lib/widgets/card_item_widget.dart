import 'dart:developer';
import 'package:financial_dashboard/widgets/card_item_horz_widget.dart';
import 'package:financial_dashboard/widgets/card_item_vert_widget.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    log(width.toString());

    return width >= 800
        ? const CardItemHorzWidget()
        : const CardItemVertWidget();
  }
}
