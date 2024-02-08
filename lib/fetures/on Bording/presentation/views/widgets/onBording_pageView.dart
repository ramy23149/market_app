import 'package:flutter/material.dart';
import 'package:market/fetures/on%20Bording/presentation/views/widgets/custom_onBording_view_item.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, this.controller, this.onPageChanged});
final PageController? controller;
final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: onPageChanged,
      controller: controller,
      children: const [
        CustomOnBordingViewItem(imagePath: 'assets/onboarding1.png',title: 'E Shopping',subtitle: 'buy fresh fruits from your mobile',),
        CustomOnBordingViewItem(imagePath: 'assets/onboarding2.png',title: 'Delivery on the way',subtitle: 'very fast Delivery',),
        CustomOnBordingViewItem(imagePath: 'assets/onboarding3.png', title: 'Delevery Arrived', subtitle: 'Order is arrived to your place'),
      ],
    );
  }
}