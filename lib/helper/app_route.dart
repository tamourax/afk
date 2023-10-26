import 'package:afk/SplashView.dart';
import 'package:afk/logainpage.dart';
import 'package:afk/paymentpage.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const ksplashveiw = '/splashveiw';
  static const kLoginpage = '/loginpage';
  static const kpaymentpage = '/paymentpage';
  

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => paymentpage(),
      ),
      GoRoute(
        path: kLoginpage,
        builder: (context, state) => LogainPage(),
      ),
      GoRoute(
        path: kpaymentpage,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
