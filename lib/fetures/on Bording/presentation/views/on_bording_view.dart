import 'package:flutter/material.dart';
import 'package:market/fetures/on%20Bording/presentation/views/widgets/on_bording_View_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child:OnBordingViewBody(), ) 
    );
  }
}