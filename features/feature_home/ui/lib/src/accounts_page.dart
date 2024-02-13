import 'package:core_navigation_ui/index.dart';
import 'package:feature_home_api/home_nav.dart';
import 'package:feature_login_api/login_nav.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accounts page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.router.go(HomeNavigationConfig());
              },
              child: Text("Home"),
            ),
            TextButton(
              onPressed: () {
                context.router.go(LoginNavigationConfig());
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
