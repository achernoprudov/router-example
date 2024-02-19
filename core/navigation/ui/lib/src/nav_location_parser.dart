import 'package:core_navigation_api/nav_config.dart';

abstract class NavLocationParser {
  NavConfig? parse(String location);
}