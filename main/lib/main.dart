import 'package:core_navigation_ui/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/src/custom/custom_route_information_parser.dart';
import 'package:router_example/src/custom/custom_router_delegate.dart';
import 'package:router_example/src/go/go_router_proxy.dart';
import 'package:router_example/src/go/router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  // setUrlStrategy(PathUrlStrategy());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: ,
      routeInformationParser: CustomRouteInformationParser(),
      routerDelegate: CustomRouterDelegate(),
      routeInformationProvider: ,
      builder: (context, child) {
        return InheritedRouterConfiguration(
          configuration: GoRouterConfigurationProxy(),
          child: child ?? const Placeholder(),
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
