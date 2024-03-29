import 'package:core_navigation_ui/src/new_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class InheritedRouterConfiguration extends InheritedWidget {
  const InheritedRouterConfiguration({
    required super.child,
    required this.configuration,
    super.key,
  });

  final RouterConfiguration configuration;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<RouterConfiguration>('config', configuration),
    );
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
