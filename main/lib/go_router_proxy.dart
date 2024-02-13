import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/index.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class GoRouterConfigurationProxy implements RouterConfiguration {
  @override
  void go(BuildContext context, NavConfig config) {
    context.go(config.path, extra: config);
  }

  @override
  void pop<T extends Object?>(BuildContext context, [T? result]) {
    return context.pop(result);
  }

  @override
  Future<T?> push<T extends Object?>(BuildContext context, NavConfig config) {
    return context.push(config.path, extra: config);
  }

  @override
  void pushReplacement(BuildContext context, NavConfig config) {
    context.pushReplacement(config.path, extra: config);
  }

  @override
  void replace(BuildContext context, NavConfig config) {
    context.replace(config.path, extra: config);
  }
}
