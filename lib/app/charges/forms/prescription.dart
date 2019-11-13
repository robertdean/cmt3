import 'package:card_settings/card_settings.dart';
import 'package:fbt/app/models/caregiver.dart';
import 'package:fbt/app/models/prescription.dart';
import 'package:flutter/widgets.dart';

class PrescriptionForm extends StatefulWidget {
  const PrescriptionForm({Key key}) : super(key: key);

  @override
  _PrescriptionFormState createState() => _PrescriptionFormState();
}

class _PrescriptionFormState extends State<PrescriptionForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = prescriptions[1].name;
  String format = prescriptions[1].format;
  String dose = prescriptions[1].dose;
  String caregiverId = 'abc';
  String caregiverName =
      caregivers.firstWhere((caregiver) => caregiver.id == 'abc').name;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: CardSettings(
        children: <Widget>[
          CardSettingsHeader(label: 'Prescription'),
          CardSettingsText(
            label: 'Name',
            initialValue: name,
            autovalidate: true,
            validator: (String value) {
              if (value == null || value.isEmpty) return 'Name is required.';
            },
            onChanged: (String value) => name = value,
          ),
          CardSettingsListPicker(
            label: 'Format',
            initialValue: format,
            options: formats,
            onChanged: (value) => format = value,
          ),
          CardSettingsMultiselect(
            label: 'Frequency',
            initialValues: [],
            options: frequencies,
            autovalidate: true,
            validator: (List<String> value) {
              if (value == null || value.isEmpty)
                return 'You must select one or more values';

              return null;
            },
            onSaved: (value) => {},
            onChanged: (value) {
              frequencies = value;
            },
          ),
          CardSettingsListPicker(
            label: 'Prescribed By',
            initialValue: caregiverName,
            options: caregivers.map((x) => x.name).toList(),
            onChanged: (value) => caregiverName = value,
          ),
          CardSettingsButton(
            label: 'Save',
            isDestructive: true,
            onPressed: () {
              _formKey.currentState.save();
            },
          ),
          CardSettingsButton(
            label: 'RESET',
            isDestructive: true,
            onPressed: () {
              _formKey.currentState.reset();
            },
          )
        ],
      ),
    );
  }
}
