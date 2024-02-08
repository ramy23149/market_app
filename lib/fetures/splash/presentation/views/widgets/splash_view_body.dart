import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/router/router.dart';
import 'package:market/core/utils/size_config.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? faddingAnimation;

  @override
  void initState() {
    super.initState();
    fruitMarketAnimation();
    navigationToOnBordingView();
  }

  @override
  void dispose() {
    animationController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
        ),
        Center(
          child: FadeTransition(
            opacity: faddingAnimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Image.asset(
            'assets/splash_view_image.png',
          ),
        )
      ],
    );
  }

  void fruitMarketAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    faddingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
  }

  void navigationToOnBordingView() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push(RouterApp.kOnBordingView);
    });
  }
}
