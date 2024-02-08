import 'package:flutter/material.dart';
import 'package:market/core/styles/fonts_styles.dart';

class CustomMaterialBotton extends StatelessWidget {
  const CustomMaterialBotton(
      {super.key,
      this.onPressed,
      required this.title,
      this.shape,
      this.textColor,
      required this.logo});
  final void Function()? onPressed;
  final String title;
  final ShapeBorder? shape;
  final Color? textColor;
  final String logo;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(9),
        border: Border.all(
        color: Colors.grey,
          width: 2,
        ),
      ),
      child: MaterialButton(  
        shape: shape,
        onPressed: onPressed,
        splashColor: Colors.grey,
        child: Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                child: Image.asset(
                  logo,
                  height: 35,
                  width: 45,
                ),
              ),
             WidgetSpan(child: Transform.translate(
              offset: const Offset(0, -5),
               child: Text(
                
                title,style: Styles.textStyle16.copyWith(color: textColor ?? Colors.black),),
             ))
            ],
          ),
          
        ),
      ),
    );
  }
}
