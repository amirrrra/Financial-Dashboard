import 'package:flutter/material.dart';

class CustomFittedBoxWidget extends StatelessWidget {
  final Widget child;
  const CustomFittedBoxWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: child,
    );
  }
}
