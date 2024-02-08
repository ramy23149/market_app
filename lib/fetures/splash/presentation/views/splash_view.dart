import 'package:flutter/material.dart';
import 'package:market/core/constanes/constants.dart';
import 'package:market/fetures/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor,
      body: SplashViewBody(),
    );
  }
}