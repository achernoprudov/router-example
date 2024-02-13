import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/src/new_router.dart';
import 'package:flutter/cupertino.dart';

class NewRouterProxy implements NewRouter {
  final RouterConfiguration routerConfiguration;
  final BuildContext context;

  NewRouterProxy({
    required this.routerConfiguration,
    required this.context,
  });

  @override
  void go(NavConfig config) {
    routerConfiguration.go(context, config);
  }

  @override
  void pop<T extends Object?>([T? result]) {
    routerConfiguration.pop(context, result);
  }

  @override
  Future<T?> push<T extends Object?>(NavConfig config) {
    return routerConfiguration.push(context, config);
  }

  @override
  void pushReplacement(NavConfig config) {
    routerConfiguration.pushReplacement(context, config);
  }

  @override
  void replace(NavConfig config) {
    routerConfiguration.replace(context, config);
  }
}
