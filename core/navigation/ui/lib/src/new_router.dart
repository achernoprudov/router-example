import 'package:core_navigation_api/nav_config.dart';

import 'package:flutter/material.dart';

typedef NavigationCallback = Function(BuildContext, NavConfig);

abstract class NewRouter {
  void push(NavConfig config) {}
}

class NewRouterConfiguration {
  final NavigationCallback pushCallback;

  NewRouterConfiguration({required this.pushCallback});
}
