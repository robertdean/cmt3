import 'package:fbt/app/models/prescription.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AppBar customAppBar({@required String title}) {
  return AppBar(title: Text(title));
}

class SelectedFeatureList extends StatelessWidget {
  final String title;

  final ListView listView;

  const SelectedFeatureList({Key key, this.title, this.listView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar(title: title), body: this.listView);
  }
}
