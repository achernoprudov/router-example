import 'package:core_navigation_ui/index.dart';
import 'package:feature_login_api/login_nav.dart';
import 'package:flutter/material.dart';

class UnusedPage extends StatelessWidget {
  const UnusedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page which should be remove from build'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.router.push(LoginNavigationConfig());
              },
              child: Text("Logout which should be remove from build"),
            ),
          ],
        ),
      ),
    );
  }
}
