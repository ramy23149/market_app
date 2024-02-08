import 'package:flutter/material.dart';
import 'package:market/fetures/auth/presentation/views/widgets/auther_info_body.dart';

class AutherInfo extends StatelessWidget {
  const AutherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AutherInfoBody(),
    );
  }
}