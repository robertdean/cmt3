import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Caregiver {
  final String id;
  final String name;
  final String specialty;
  final String contactInfo;

  Caregiver({this.id, this.name, this.specialty, this.contactInfo});
}

final caregiverListViewBuilder = new ListView.builder(
    itemCount: caregivers.length,
    itemBuilder: (BuildContext ctxt, int index) {
      final p = caregivers[index];
      return new ListTile(
        leading: Icon(FontAwesomeIcons.addressCard),
        title: Text(p.name),
        subtitle: Text(p.specialty),
        onTap: () {
          print(p);
        },
      );
    });

final caregivers = [
  Caregiver(
      id: 'abc',
      name: 'Dr. Jenkins',
      specialty: listOfSpecialties[0],
      contactInfo: "123 Main St"),
  Caregiver(
      id: 'cde',
      name: 'Dr. Malik',
      specialty: listOfSpecialties[1],
      contactInfo: "123 Main St"),
  Caregiver(
      id: 'efg',
      name: 'Dr. Cuevas',
      specialty: listOfSpecialties[2],
      contactInfo: "123 Main St"),
  Caregiver(
      id: 'hij',
      name: 'Dr. Lei',
      specialty: listOfSpecialties[3],
      contactInfo: "123 Main St"),
  Caregiver(
      id: 'klm',
      name: 'test5',
      specialty: listOfSpecialties[4],
      contactInfo: "123 Main St"),
  Caregiver(
      id: 'nop',
      name: 'test6',
      specialty: 'Geriatric',
      contactInfo: "123 Main St"),
];
final listOfSpecialties = [
  "Anesthesia",
  "Cardiovascular",
  "CommunityHealth",
  "Dentistry",
  "Dermatology",
  "DietNutrition",
  "Emergency",
  "Endocrine",
  "Gastroenterologic",
  "Genetic",
  "Geriatric",
  "Gynecologic",
  "Hematologic",
  "Infectious",
  "LaboratoryScience",
  "Midwifery",
  "Musculoskeletal",
  "Neurologic",
  "Nursing",
  "Obstetric",
  "Oncologic",
  "Optometric",
  "Otolaryngologic",
  "Pathology",
  "Pediatric",
  "PharmacySpecialty",
  "Physiotherapy",
  "PlasticSurgery",
  "Podiatric",
  "PrimaryCare",
  "Psychiatric",
  "PublicHealth",
  "Pulmonary",
  "Radiography",
  "Renal",
  "RespiratoryTherapy",
  "Rheumatologic",
  "SpeechPathology",
  "Surgical",
  "Toxicologic",
  "Urologic ",
];
