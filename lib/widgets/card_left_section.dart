import 'package:financial_dashboard/utils/app_images.dart';
import 'package:financial_dashboard/widgets/card_pageview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardLeftSection extends StatefulWidget {
  const CardLeftSection({super.key});

  @override
  State<CardLeftSection> createState() => _CardLeftSectionState();
}

class _CardLeftSectionState extends State<CardLeftSection> {
  final PageController _pageController = PageController();
  int activatedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       transferIcon(
          onTap: () => _goToPreviousPage(),
          image: AppImages.left,
        ),
        SizedBox(width: 10),
        Expanded(
          child: CardPageviewWidget(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                activatedIndex = index;
              });
            },
          ),
        ),
        SizedBox(width: 10),
        transferIcon(
          onTap: () => _goToNextPage(),
          image: AppImages.right,
        ),
      ],
    );
  }

  Padding transferIcon({
    required void Function() onTap,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70),
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(image),
      ),
    );
  }

  void _goToPreviousPage() {
    if (activatedIndex > 0) {
      activatedIndex--;
      _animateTo();
    }
  }

  void _goToNextPage() {
    if (activatedIndex < 2) {
      activatedIndex++;
      _animateTo();
    }
  }

  void _animateTo() {
    _pageController.animateToPage(
      activatedIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
