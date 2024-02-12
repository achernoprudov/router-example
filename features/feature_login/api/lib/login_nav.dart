import 'package:core_navigation_api/nav_config.dart';

class LoginNavigationConfig implements NavConfig {
  static final configName = 'login';
  static final configPath = '/$configName';

  @override
  String get path => configPath;
}
