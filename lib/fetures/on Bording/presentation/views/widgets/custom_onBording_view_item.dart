import 'package:flutter/material.dart';
import 'package:market/core/styles/fonts_styles.dart';
import 'package:market/core/utils/custom_size.dart';
import 'package:market/core/utils/size_config.dart';

class CustomOnBordingViewItem extends StatelessWidget {
  const CustomOnBordingViewItem({super.key, required this.imagePath, required this.title, required this.subtitle, this.color});
  final String imagePath;
  final String title;
  final String subtitle;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         const CustomSize(18),
        SizedBox(
          height: SizeConfig.defaultSize!*25,
          child: Image.asset(imagePath)),
         const CustomSize(2.5),
        Text(
          title,
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
        ),
         const CustomSize(1),
        Opacity(
          opacity: .8,
          child: Text(
            subtitle,
            style: Styles.textStyle20.copyWith(fontSize: 16),
          ),
        ),
    
      ],
    );
  }
}
