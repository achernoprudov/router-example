import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/src/new_router.dart';
import 'package:flutter/cupertino.dart';

class NewRouterProxy implements NewRouter {
  final NewRouterConfiguration routerConfiguration;
  final BuildContext context;

  NewRouterProxy({
    required this.routerConfiguration,
    required this.context,
  });

  @override
  void push(NavConfig config) {
    routerConfiguration.pushCallback(context, config);
  }
}
