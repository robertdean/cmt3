import 'package:fbt/app/home_page.dart';
import 'package:fbt/app/models/user.dart';
import 'package:fbt/app/sign_in_page.dart';
import 'package:flutter/widgets.dart';

class LandingPage extends StatelessWidget {
  User user;
  @override
  Widget build(BuildContext context) {
    if (user != null) return SignInPage();
    return HomePage();
  }
}
