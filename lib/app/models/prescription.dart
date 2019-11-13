import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Prescription {
  final String id;
  final String name;
  final String dose;
  final String format;
  final String caregiverId;
  // other names
  // treating conditions

  Prescription({this.id, this.name, this.dose, this.format, this.caregiverId});
}

List<Prescription> prescriptions = [
  Prescription(
      id: '1', name: 'Test1', dose: '10 MG', format: 'TAB', caregiverId: 'abc'),
  Prescription(
      id: '2', name: 'Test2', dose: '10 MG', format: 'TAB', caregiverId: 'abc'),
  Prescription(
      id: '3', name: 'Test3', dose: '10 MG', format: 'TAB', caregiverId: 'abc'),
  Prescription(
      id: '4', name: 'Test4', dose: '10 MG', format: 'TAB', caregiverId: 'abc'),
  Prescription(
      id: '5', name: 'Test5', dose: '10 MG', format: 'TAB', caregiverId: 'abc'),
];

final prescriptionsListViewBuilder = ListView.builder(
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
    });
