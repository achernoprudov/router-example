import 'package:core_navigation_ui/src/inherited_new_router.dart';
import 'package:core_navigation_ui/src/new_router.dart';
import 'package:core_navigation_ui/src/router_wrapper.dart';
import 'package:flutter/cupertino.dart';

extension RouterConfigurationExt on BuildContext {
  /// The current [NewRouter] in the widget tree, if any.
  ///
  /// This method returns null when it is called during redirects.
  static RouterConfiguration? maybeOf(BuildContext context) {
    final InheritedRouterConfiguration? inherited = context
        .getElementForInheritedWidgetOfExactType<InheritedRouterConfiguration>()
        ?.widget as InheritedRouterConfiguration?;
    return inherited?.configuration;
  }

  /// Find the current [NewRouter] in the widget tree.
  ///
  /// This method throws when it is called during redirects.
  static RouterConfiguration of(BuildContext context) {
    final RouterConfiguration? inherited = maybeOf(context);
    return ArgumentError.checkNotNull(
      inherited,
      'NewRouter is expected to present in widget tree',
    );
  }
}

extension NavConfigExt on BuildContext {
  NewRouter get router {
    final config = RouterConfigurationExt.of(this);
    return NewRouterProxy(routerConfiguration: config, context: this);
  }
}
