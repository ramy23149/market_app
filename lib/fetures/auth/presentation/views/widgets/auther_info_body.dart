import 'package:flutter/material.dart';
import 'package:market/core/constanes/constants.dart';
import 'package:market/core/styles/fonts_styles.dart';
import 'package:market/core/utils/custom_size.dart';
import 'package:market/core/widgets/custom_textField.dart';
import 'package:market/core/widgets/custom_text_botton.dart';

class AutherInfoBody extends StatelessWidget {
  const AutherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return    const Padding(
      padding:EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              CustomSize(7),
            Text('Enter Your Name',style: Styles.textStyle18),
          CustomSize(2),
        CustomTextFiald(),
        CustomSize(6),
        Text('Enter Your Phone Number',style: Styles.textStyle18,),
          CustomSize(2),
          CustomTextFiald(),
          CustomSize(6),
          Text('Add Adress',style: Styles.textStyle18,),
            CustomSize(2),
            CustomTextFiald(maxline: 5,),
                    CustomSize(10),
                Center(
                  child: CustomBotton(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                    backgroundColor: kColor,
                    text: 'Save'),
                ),
                   SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}