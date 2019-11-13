import 'package:fbt/app/models/prescription.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AppBar customAppBar({@required String title}) {
  return AppBar(title: Text(title));
}

class PrescriptionList extends StatelessWidget {
  static const routeName = '/prescriptionList';
  static const title = 'Prescription List';

  const PrescriptionList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: title),
        body: new ListView.builder(
            itemCount: prescriptions.length,
            itemBuilder: (BuildContext ctxt, int index) {
              final p = prescriptions[index];
              return new ListTile(
                title: Text(p.name),
                subtitle: Text(p.format),
                onTap: () {
                  print(p);
                },
              );
            }));
  }
}
