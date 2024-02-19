import 'package:core_navigation_api/nav_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:router_example/src/custom/custom_route_information_parser.dart';
import 'package:router_example/src/custom/custom_router_delegate.dart';

class CustomRouterConfig implements RouterConfig<NavConfig> {
  @override
  late final CustomRouterDelegate routerDelegate;
  @override
  late final CustomRouteInformationParser routeInformationParser;
  @override
  late final BackButtonDispatcher backButtonDispatcher;

  CustomRouterConfig() {
    routerDelegate = CustomRouterDelegate();
    routeInformationParser = CustomRouteInformationParser();
    backButtonDispatcher = RootBackButtonDispatcher();
  }

  @override
  // TODO: implement routeInformationProvider
  RouteInformationProvider? get routeInformationProvider =>
      throw UnimplementedError();
}
