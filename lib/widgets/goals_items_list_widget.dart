import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/widgets/goals_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalsItemsListWidget extends StatefulWidget {
  const GoalsItemsListWidget({super.key});

  @override
  State<GoalsItemsListWidget> createState() => _GoalsItemsListWidgetState();
}

class _GoalsItemsListWidgetState extends State<GoalsItemsListWidget> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ExpandablePageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: List.generate(
              3,
              (pageIndex) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 14,
                          top: 12,
                          bottom: 45,
                          left: 2,
                        ),
                        child: GoalsItemWidget(),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            _pageController.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          child: SvgPicture.asset(AppImages.right),
        ),
      ],
    );
  }
}
