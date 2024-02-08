import 'package:flutter/material.dart';
import 'package:market/fetures/auth/presentation/views/widgets/auth_choose_view_body.dart';

class AuthChooseView extends StatelessWidget {
  const AuthChooseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AuthChooseViewBody()),
    ); 
  }
}