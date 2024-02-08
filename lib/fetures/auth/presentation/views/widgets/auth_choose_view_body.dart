import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/constanes/constants.dart';
import 'package:market/core/router/router.dart';
import 'package:market/core/styles/fonts_styles.dart';
import 'package:market/core/utils/custom_size.dart';
import 'package:market/core/utils/size_config.dart';
import 'package:market/core/widgets/custom_material_botton.dart';

class AuthChooseViewBody extends StatelessWidget {
  const AuthChooseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSize(15),
        SizedBox(
            height: SizeConfig.defaultSize! * 25,
            child: Image.asset('assets/logo.png')),
        Text(
          'Fruit Market',
          style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold, fontSize: 55, color: kColor),
        ),
         Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CustomMaterialBotton(
                onPressed: () => context.push(RouterApp.kAutherInfo),
                  logo: 'assets/Google_icon.png',
                  title: 'log in with'),
                  const SizedBox(width: 15,),
              CustomMaterialBotton(
                onPressed: () => context.push(RouterApp.kAutherInfo),
                title: 'log in with',
              logo: 'assets/faceBook_icon.png',
              )
            ],
          ),
        )
      ],
    );
  }
}
