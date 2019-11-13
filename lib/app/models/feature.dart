import 'package:fbt/app/charges/prescriptions/prescriptions_list.dart';
import 'package:fbt/app/models/caregiver.dart';
import 'package:fbt/app/models/prescription.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feature {
  final String name;
  final String route;
  final String description;
  final IconData icon;
  final ListView list;
  Feature({this.name, this.route, this.description, this.icon, this.list});
}

List<Feature> features = [
  Feature(
      name: 'Prescriptions',
      description: '',
      route: PrescriptionList.routeName,
      icon: FontAwesomeIcons.capsules,
      list: prescriptionsListViewBuilder),
  Feature(
      name: 'Caregivers',
      description: '',
      route: 'caregivers',
      icon: FontAwesomeIcons.userMd,
      list: caregiverListViewBuilder),
  Feature(
      name: 'Collaborators',
      description: '',
      route: 'collaborators',
      icon: FontAwesomeIcons.users,
      list: null),
  Feature(
      name: 'Appointments',
      description: '',
      route: 'appointments',
      icon: FontAwesomeIcons.calendarCheck,
      list: null),
  Feature(
      name: 'Conditions',
      description: '',
      route: 'conditions',
      icon: FontAwesomeIcons.accessibleIcon,
      list: null),
  Feature(
      name: 'Vitals',
      description: '',
      route: 'vitals',
      icon: FontAwesomeIcons.heartbeat,
      list: null),
  Feature(
      name: 'Things to Know',
      description: '',
      route: 'toknow',
      icon: FontAwesomeIcons.heartbeat,
      list: null),
  Feature(
      name: 'To do\'s',
      description: '',
      route: 'todos',
      icon: FontAwesomeIcons.list,
      list: null),
  Feature(
      name: 'History',
      description: '',
      route: 'history',
      icon: FontAwesomeIcons.history,
      list: null),
];
