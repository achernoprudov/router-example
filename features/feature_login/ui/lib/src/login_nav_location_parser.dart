import 'package:core_navigation_api/nav_config.dart';
import 'package:core_navigation_ui/index.dart';
import 'package:feature_home_api/home_nav.dart';
import 'package:feature_login_api/login_nav.dart';

class LoginNavLocationParser implements NavLocationParser {
  @override
  NavConfig? parse(String location) {
    if (location == 'login') {
      return LoginNavigationConfig();
    }
    return null;
  }
}
