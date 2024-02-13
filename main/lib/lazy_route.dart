import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/lazy_page.dart';

typedef RouteWidgetLoader = Future<Widget> Function(
  BuildContext context,
  GoRouterState state,
);

extension LazyRoutes on GoRoute {
  static GoRoute buildLazyRoute({
    required String path,
    required RouteWidgetLoader loader,
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
      path: path,
      routes: routes,
      builder: (context, state) {
        return LazyPage(
          key: ValueKey(path),
          loader: (context) => loader(context, state),
        );
      },
    );
  }
}
