import 'package:core_navigation_ui/navigator.dart';
import 'package:feature_home_api/home_nav.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.openPage(homeNavigationPath);
              },
              child: Text("Do login"),
            ),
          ],
        ),
      ),
    );
  }
}
