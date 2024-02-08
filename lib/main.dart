import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:market/core/router/router.dart';
import 'package:market/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterApp.router,
    );
  }
}