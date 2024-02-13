import 'package:core_navigation_ui/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      builder: (context, child) {
        return InheritedRouterConfiguration(
          configuration: NewRouterConfiguration(
            pushCallback: (context, config) {
              context.push(config.path);

              context.pushReplacement(location)
            },
            goCallback: (context, config) {
              context.go(config.path, extra: config);
            },
          ),
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
