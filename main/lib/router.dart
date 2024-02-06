import 'package:feature_home_api/home_nav.dart';
import 'package:feature_home_ui/home_page.dart' deferred as home;
import 'package:feature_login_api/login_nav.dart';
import 'package:feature_login_ui/login_page.dart' deferred as login;
import 'package:feature_splash_api/splash_nav.dart';
import 'package:feature_splash_ui/splash_page.dart' deferred as splash;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: splashNavigationPath,
  routes: <RouteBase>[
    GoRoute(
      path: splashNavigationPath,
      builder: (BuildContext context, GoRouterState state) {
        // await splash.loadLibrary();
        return splash.SplashPage();
      },
    ),
    GoRoute(
      path: loginNavigationPath,
      builder: (context, state) {
        return login.LoginPage();
      },
    ),
    GoRoute(
      path: homeNavigationPath,
      builder: (context, state) {
        return home.HomePage();
      },
    ),
  ],
);

class LazyPage extends StatefulWidget {
  const LazyPage({super.key});

  @override
  State<LazyPage> createState() => _LazyPageState();
}

class _LazyPageState extends State<LazyPage> {
  var isLoaded = false;

  // var

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoaded) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Placeholder();
  }
}
