import 'package:core_navigation_api/nav_config.dart';
import 'package:feature_home_api/home_nav.dart';
import 'package:feature_home_ui/index.dart';
import 'package:feature_login_api/login_nav.dart';
import 'package:feature_login_ui/index.dart';
import 'package:feature_splash_api/splash_nav.dart';
import 'package:feature_splash_ui/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomRouterDelegate extends RouterDelegate<NavConfig>
    with ChangeNotifier {
  final List<NavConfig> pages = [];

  @override
  Widget build(BuildContext context) {
    final top = pages.lastOrNull;
    return Navigator(
      pages: [
        if (top == null || top is SplashNavigationConfig)
          const MaterialPage(
            key: ValueKey('SplashPage'),
            child: SplashPage(),
          ),
        if (top is LoginNavigationConfig)
          const MaterialPage(
            key: ValueKey('LoginPage'),
            child: LoginPage(),
          ),
        if (top is HomeNavigationConfig)
          const MaterialPage(
            key: ValueKey('HomePage'),
            child: HomePage(),
          ),
      ],
    );
  }

  @override
  Future<void> setNewRoutePath(NavConfig configuration) async {
    pages.add(configuration);
  }

  @override
  Future<bool> popRoute() async {
    if (pages.length == 1) {
      return false;
    }
    pages.removeLast();
    return true;
  }
}
