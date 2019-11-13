import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInPage extends StatelessWidget {
  static const routeName = 'signInPage';
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Sign In"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("Register"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
