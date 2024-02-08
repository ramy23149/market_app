import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/constanes/constants.dart';
import 'package:market/core/router/router.dart';
import 'package:market/core/styles/fonts_styles.dart';
import 'package:market/core/utils/size_config.dart';
import 'package:market/core/widgets/custom_text_botton.dart';
import 'package:market/fetures/on%20Bording/presentation/views/widgets/onBording_pageView.dart';
import 'package:market/fetures/on%20Bording/presentation/views/widgets/smooth_indicator.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  final PageController controller = PageController(initialPage: 0);
  int pageIndex = 0;
  int currentPage = 0;
  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        pageIndex = controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        OnBordingPageView(
          onPageChanged: (int page) {
            currentPage = page;
          },
          controller: controller,
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 24,
            child: CustomSmoothIndicator(
              activedot: pageIndex,
            )),
        Visibility(
          visible: pageIndex == 2 ? false : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 0,
            child: MaterialButton(
              onPressed: () {
                 controller.animateToPage(currentPage+2, duration: const Duration(microseconds: 700), curve: Curves.easeInOut);
                pageIndex++;
                setState(() {});
              },
              child: const Text(
                'skip',
                style: Styles.textStyle16,
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomBotton(
              onPressed: () {
                if (pageIndex == 2) {
                  context.push(RouterApp.kAuthChooseView);
                } else {
                   controller.animateToPage(currentPage+1, duration: const Duration(milliseconds: 700), curve: Curves.easeInOut,);
                }
              },
              borderRadius: BorderRadius.circular(5),
              backgroundColor: kColor,
              text: pageIndex == 2 ? 'Get Started' : 'Next'),
        ),
      ],
    );
  }
}
