import 'package:core_navigation_api/nav_config.dart';
import 'package:feature_home_api/home_nav.dart';

class AccountsNavigationConfig implements NavConfig {
  static final configName = 'home/accounts';
  static final configPath = '/$configName';

  @override
  String get name => configName;

  @override
  String get path => configPath;
}
