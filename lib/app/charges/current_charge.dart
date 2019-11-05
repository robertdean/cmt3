import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentCharge extends StatelessWidget {
  const CurrentCharge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: <Widget>[
            CircularProfileAvatar(
              '',
              borderColor: Colors.blueAccent,
              backgroundColor: Colors.transparent,
              elevation: 5.0,
              initialsText: Text(
                "B",
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Betty",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.prescription),
                      onPressed: () {},
                    ),
                    Text("Meds")
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.briefcaseMedical),
                      onPressed: () {},
                    ),
                    Text("Caregivers")
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.userNurse),
                      onPressed: () {},
                    ),
                    Text("Colaborators")
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Other Stuff"),
            SizedBox(height: 20),
            Placeholder(
              fallbackHeight: 100,
            )
          ],
        ),
      ),
    );
  }
}
