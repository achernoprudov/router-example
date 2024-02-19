import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/index.dart';
import 'package:feature_home_api/home_nav.dart';

class HomeNavLocationParser implements NavLocationParser {
  @override
  NavConfig? parse(String location) {
    if (location == 'home') {
      return HomeNavigationConfig();
    }
    return null;
  }
}
