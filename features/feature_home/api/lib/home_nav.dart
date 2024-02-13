import 'package:core_navigation_api/nav_config.dart';

class HomeNavigationConfig implements NavConfig {
  static final configName = 'home';
  static final configPath = '/$configName';

  @override
  String get name => configName;

  @override
  String get path => configPath;
}
