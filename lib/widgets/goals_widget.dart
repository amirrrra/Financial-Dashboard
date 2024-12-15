import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/utils/app_styles.dart';
import 'package:financial_dashboard/widgets/goals_items_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalsWidget extends StatefulWidget {
  const GoalsWidget({super.key});

  @override
  State<GoalsWidget> createState() => _GoalsWidgetState();
}

class _GoalsWidgetState extends State<GoalsWidget> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Goals',
          style: AppStyles.semi22(context),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: GoalsItemsListWidget(
                pageController: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 45),
              child: GestureDetector(
                onTap: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: SvgPicture.asset(AppImages.right),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
