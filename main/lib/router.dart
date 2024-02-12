import 'package:feature_home_api/home_nav.dart';
import 'package:feature_home_ui/home_page.dart' deferred as home;
import 'package:feature_login_api/login_nav.dart';
import 'package:feature_login_ui/login_page.dart' deferred as login;
import 'package:feature_splash_api/splash_nav.dart';
import 'package:feature_splash_ui/splash_page.dart' deferred as splash;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/lazy_page.dart';

final GoRouter router = GoRouter(
  initialLocation: splashNavigationPath,
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
      path: splashNavigationPath,
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
    GoRoute(
      path: loginNavigationPath,
      builder: (context, state) {
        return LazyPage(
          key: const ValueKey('login page'),
          loader: (context) async {
            await login.loadLibrary();
            return login.LoginPage();
          },
        );
      },
    )
  ];
}

Iterable<GoRoute> _homeRoutes() {
  return [
    GoRoute(
        path: homeNavigationPath,
        builder: (context, state) {
          return LazyPage(
            key: const ValueKey('home page'),
            loader: (context) async {
              await home.loadLibrary();
              return home.HomePage();
            },
          );
        },
        // home/accounts
        // home -> home/accounts
        routes: [
          GoRoute(path: 'accounts', builder: (context, state) {
            return LazyPage(
              key: const ValueKey('home page'),
              loader: (context) async {
                await home.loadLibrary();
                return home.HomePage();
              },
            );
          },),
        ])
  ];
}
