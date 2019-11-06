import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feature {
  final String name;
  final String route;
  final String description;
  final IconData icon;
  Feature({this.name, this.route, this.description, this.icon});
}

List<Feature> features = [
  Feature(
      name: 'Prescriptions',
      description: '',
      route: 'meds',
      icon: FontAwesomeIcons.capsules),
  Feature(
      name: 'Caregivers',
      description: '',
      route: 'caregivers',
      icon: FontAwesomeIcons.userMd),
  Feature(
      name: 'Collaborators',
      description: '',
      route: 'collaborators',
      icon: FontAwesomeIcons.users),
  Feature(
      name: 'Appointments',
      description: '',
      route: 'appointments',
      icon: FontAwesomeIcons.calendarCheck),
  Feature(
      name: 'Conditions',
      description: '',
      route: 'conditions',
      icon: FontAwesomeIcons.accessibleIcon),
  Feature(
      name: 'Vitals',
      description: '',
      route: 'vitals',
      icon: FontAwesomeIcons.heartbeat),
  Feature(
      name: 'Things to Know',
      description: '',
      route: 'toknow',
      icon: FontAwesomeIcons.heartbeat),
  Feature(
      name: 'To do\'s',
      description: '',
      route: 'todos',
      icon: FontAwesomeIcons.list),
  Feature(
      name: 'History',
      description: '',
      route: 'history',
      icon: FontAwesomeIcons.history),
];
