import 'package:feature_home_api/home_nav.dart';
import 'package:feature_home_ui/index.dart' deferred as home;
import 'package:feature_login_api/login_nav.dart';
import 'package:feature_login_ui/login_page.dart' deferred as login;
import 'package:feature_splash_api/splash_nav.dart';
import 'package:feature_splash_ui/splash_page.dart' deferred as splash;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/src/widget/lazy_page.dart';
import 'package:router_example/src/go/lazy_route.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashNavigationConfig.configPath,
  routes: <RouteBase>[
    ..._splashRoutes(),
    ..._loginRoutes(),
    ..._homeRoutes(),
  ],
);

/// ↓ ↓ ↓ Can be located in Dart part file ↓ ↓ ↓

Iterable<GoRoute> _splashRoutes() {
  return [
    GoRoute(
      path: SplashNavigationConfig.configPath,
      builder: (BuildContext context, GoRouterState state) {
        return LazyPage(
          key: const ValueKey('splash page'),
          loader: (context) async {
            await splash.loadLibrary();
            return splash.SplashPage();
          },
        );
      },
    )
  ];
}

Iterable<GoRoute> _loginRoutes() {
  return [
    LazyRoutes.buildLazyRoute(
      path: LoginNavigationConfig.configPath,
      loader: (context, state) async {
        await login.loadLibrary();
        return login.LoginPage();
      },
    ),
  ];
}

Iterable<GoRoute> _homeRoutes() {
  return [
    LazyRoutes.buildLazyRoute(
      path: HomeNavigationConfig.configPath,
      loader: (context, state) async {
        await home.loadLibrary();
        return home.HomePage();
      },
      routes: [
        LazyRoutes.buildLazyRoute(
          path: 'accounts',
          loader: (context, state) async {
            await home.loadLibrary();
            return home.AccountsPage();
          },
        ),
      ],
    ),
  ];
}
