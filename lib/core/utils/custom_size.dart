import 'package:flutter/material.dart';
import 'package:market/core/utils/size_config.dart';

class CustomSize extends StatelessWidget {
  const CustomSize(this.value);
final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeConfig.defaultSize!*value!,);
  }
}