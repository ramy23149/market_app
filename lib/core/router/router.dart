import 'package:go_router/go_router.dart';
import 'package:market/fetures/auth/presentation/views/auth_choose_view.dart';
import 'package:market/fetures/auth/presentation/views/auther_info.dart';
import 'package:market/fetures/on%20Bording/presentation/views/on_bording_view.dart';
import 'package:market/fetures/splash/presentation/views/splash_view.dart';

abstract class RouterApp {
  static const kAutherInfo = '/AutherInfo';
  static const kAuthChooseView = '/authChooseView';
  static const kOnBordingView = '/OnBordingView';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBordingView,
        builder: (context, state) => const OnBordingView(),
      ),
      GoRoute(
        path: kAuthChooseView,
        builder: (context, state) => const AuthChooseView(),
      ),
        GoRoute(
        path: kAutherInfo,
        builder: (context, state) => const AutherInfo(),
      ),
    ],
  );
}
