import 'package:core_navigation_api/nav_config.dart';

import 'package:flutter/material.dart';

abstract class NewRouter {
  /// Navigate to a location.
  void go(NavConfig config);

  /// Push a location onto the page stack.
  ///
  /// See also:
  /// * [pushReplacement] which replaces the top-most page of the page stack and
  ///   always uses a new page key.
  /// * [replace] which replaces the top-most page of the page stack but treats
  ///   it as the same page. The page key will be reused. This will preserve the
  ///   state and not run any page animation.
  Future<T?> push<T extends Object?>(NavConfig config);

  /// Replaces the top-most page of the page stack with the given one but treats
  /// it as the same page.
  ///
  /// The page key will be reused. This will preserve the state and not run any
  /// page animation.
  ///
  /// See also:
  /// * [push] which pushes the given location onto the page stack.
  /// * [pushReplacement] which replaces the top-most page of the page stack but
  ///   always uses a new page key.
  void replace(NavConfig config);

  /// Replaces the top-most page of the page stack with the given URL location
  /// w/ optional query parameters, e.g. `/family/f2/person/p1?color=blue`.
  ///
  /// See also:
  /// * [go] which navigates to the location.
  /// * [push] which pushes the given location onto the page stack.
  /// * [replace] which replaces the top-most page of the page stack but treats
  ///   it as the same page. The page key will be reused. This will preserve the
  ///   state and not run any page animation.
  void pushReplacement(NavConfig config);

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop<T extends Object?>([T? result]);
}

abstract class RouterConfiguration {
  /// Navigate to a location.
  void go(BuildContext context, NavConfig config);

  /// Push a location onto the page stack.
  ///
  /// See also:
  /// * [pushReplacement] which replaces the top-most page of the page stack and
  ///   always uses a new page key.
  /// * [replace] which replaces the top-most page of the page stack but treats
  ///   it as the same page. The page key will be reused. This will preserve the
  ///   state and not run any page animation.
  Future<T?> push<T extends Object?>(BuildContext context, NavConfig config);

  /// Replaces the top-most page of the page stack with the given one but treats
  /// it as the same page.
  ///
  /// The page key will be reused. This will preserve the state and not run any
  /// page animation.
  ///
  /// See also:
  /// * [push] which pushes the given location onto the page stack.
  /// * [pushReplacement] which replaces the top-most page of the page stack but
  ///   always uses a new page key.
  void replace(BuildContext context, NavConfig config);

  /// Replaces the top-most page of the page stack with the given URL location
  /// w/ optional query parameters, e.g. `/family/f2/person/p1?color=blue`.
  ///
  /// See also:
  /// * [go] which navigates to the location.
  /// * [push] which pushes the given location onto the page stack.
  /// * [replace] which replaces the top-most page of the page stack but treats
  ///   it as the same page. The page key will be reused. This will preserve the
  ///   state and not run any page animation.
  void pushReplacement(BuildContext context, NavConfig config);

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop<T extends Object?>(BuildContext context, [T? result]);
}

class RouterCallbackConfiguration implements RouterConfiguration {
  final Future<T?> Function<T extends Object?>(
    BuildContext context,
    NavConfig config,
  ) pushCallback;

  final Function(
    BuildContext context,
    NavConfig config,
  ) pushReplacementCallback;

  final Function(BuildContext context, NavConfig config) goCallback;
  final Function(BuildContext context, NavConfig config) replaceCallback;
  final Function<T extends Object?>(
    BuildContext context, [
    T? result,
  ]) popCallback;

  RouterCallbackConfiguration({
    required this.pushCallback,
    required this.pushReplacementCallback,
    required this.goCallback,
    required this.replaceCallback,
    required this.popCallback,
  });

  @override
  void go(BuildContext context, NavConfig config) {
    goCallback(context, config);
  }

  @override
  void pop<T extends Object?>(BuildContext context, [T? result]) {
    popCallback(context, result);
  }

  @override
  Future<T?> push<T extends Object?>(BuildContext context, NavConfig config) {
    return pushCallback(context, config);
  }

  @override
  void pushReplacement(BuildContext context, NavConfig config) {
    pushReplacementCallback(context, config);
  }

  @override
  void replace(BuildContext context, NavConfig config) {
    replaceCallback(context, config);
  }
}
