import 'package:flutter/material.dart';
import 'package:market/core/constanes/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({super.key, required this.activedot});
  final int activedot;
  @override
  Widget build(BuildContext context) {
    return  AnimatedSmoothIndicator(
      activeIndex: activedot,
      effect: const WormEffect(dotHeight: 12, dotWidth: 12, activeDotColor: kColor),
      count: 3,
    );
  }
}
