import 'package:core_navigation_api/nav_config.dart';
import 'package:feature_home_api/home_nav.dart';
import 'package:feature_login_api/login_nav.dart';
import 'package:feature_splash_api/splash_nav.dart';

class LocationParser {
  NavConfig? parseLocation(String location) {
    if (location == 'splash') {
      return SplashNavigationConfig();
    }
    if (location == 'login') {
      return LoginNavigationConfig();
    }
    if (location == 'home') {
      return HomeNavigationConfig();
    }
    return null;
  }
}
