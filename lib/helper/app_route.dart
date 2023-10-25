import 'package:afk/SplashView.dart';
import 'package:afk/logainpage.dart';
import 'package:afk/paymentpage.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const ksplashveiw = '/splashveiw';
  static const kLoginpage = '/loginpage';
  static const konboardingpage = '/onboarding';
  static const ksignin = '/signinpage';
  static const kblogpage = '/blocpage';
  static const kchatpage = '/chatpage';
  static const kprofilepage = '/profilepage';
  static const kpersonaldata = '/personaldata';
  static const ksetting = "/setting";
  static const kRequstpage = '/kRequstpage';
  static const kChatroom = '/kChatroom';
  static const kAboutUs = '/aboutUs';
  static const kChildProfile = '/childprofile';
  // ignore: constant_identifier_names
  static const KBlogDetailedpage = '/BlogDetailesPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const paymentpage(),
      ),
      GoRoute(
        path: kLoginpage,
        builder: (context, state) => LogainPage(),
      ),
      GoRoute(
        path: ksignin,
        builder: (context, state) => const paymentpage(),
      ),
    ],
  );
}
