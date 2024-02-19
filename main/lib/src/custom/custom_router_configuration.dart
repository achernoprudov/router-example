import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/index.dart';
import 'package:flutter/widgets.dart';

class GoRouterConfigurationProxy implements RouterConfiguration {
  @override
  void go(BuildContext context, NavConfig config) {
    context.push(config.path);
  }

  @override
  void pop<T extends Object?>(BuildContext context, [T? result]) {
    return Navigator.of(context).pop(result);
  }

  @override
  Future<T?> push<T extends Object?>(BuildContext context, NavConfig config) {
    return context.push(config.path);
  }

  @override
  void pushReplacement(BuildContext context, NavConfig config) {
    context.pushReplacement(config.path);
    context.pushReplacement(config.path, extra: config);
  }

  @override
  void replace(BuildContext context, NavConfig config) {
    context.replace(config.path, extra: config);
  }
}
