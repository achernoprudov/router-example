import 'package:core_navigation_api/nav_config.dart';

class SplashNavigationConfig implements NavConfig {
  static final configName = 'splash';
  static final configPath = '/$configName';

  @override
  String get name => configName;

  @override
  String get path => configPath;
}
