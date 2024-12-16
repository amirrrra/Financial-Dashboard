import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/widgets/card_cloudcash_content_widget.dart';
import 'package:flutter/material.dart';

class CardCloudcashWidget extends StatelessWidget {
  final Color colorDark;
  final Color colorLight;
  const CardCloudcashWidget({
    super.key,
    required this.colorDark,
    required this.colorLight,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 320 / 206,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: [colorDark, colorLight],
          ),
          image: DecorationImage(
            image: AssetImage(AppImages.cloudcard),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: CardCloudcashContentWidget(),
      ),
    );
  }
}
