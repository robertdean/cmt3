import 'package:fbt/app/charges/current_charge.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Betty!'),
      ),
      body: CurrentCharge(),
    ));
  }
}
