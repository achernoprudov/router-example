import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

extension ContextNavigation on BuildContext {
  void openPage(String navigation) => go(navigation);
}
