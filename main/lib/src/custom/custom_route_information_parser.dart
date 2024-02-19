import 'package:core_navigation_api/nav_config.dart';
import 'package:feature_splash_api/splash_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:router_example/src/custom/location_parser.dart';

class CustomRouteInformationParser
    implements RouteInformationParser<NavConfig> {
  final locationParser = LocationParser();

  @override
  Future<NavConfig> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    // declare set of nav config parsers and use them

    // DESIGN:
    // first part of uri is responsible for domain
    // second - specific page.
    // by first part we identify domain, load package and then parse it into
    // NavConfig

    return locationParser.parseLocation(routeInformation.uri.path)!;

    // TODO: implement parseRouteInformation
    throw UnimplementedError();
  }

  @override
  Future<NavConfig> parseRouteInformationWithDependencies(
    RouteInformation routeInformation,
    BuildContext context,
  ) async {
    var config = locationParser.parseLocation(routeInformation.uri.path);
    return config ?? SplashNavigationConfig();
  }

  @override
  RouteInformation? restoreRouteInformation(NavConfig configuration) {
    // TODO: use state to save some page dependent info
    //  for example, state can be a hashmap where key is domain, value is structure
    //  related to page itself
    return RouteInformation(uri: Uri.parse(configuration.path));
  }
}
