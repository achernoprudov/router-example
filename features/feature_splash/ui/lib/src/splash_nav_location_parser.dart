import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/index.dart';
import 'package:feature_splash_api/splash_nav.dart';

class SplashNavLocationParser implements NavLocationParser {
  @override
  NavConfig? parse(String location) {
    if (location == 'splash') {
      return SplashNavigationConfig();
    }
    return null;
  }
}
