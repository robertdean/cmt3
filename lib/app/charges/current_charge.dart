import 'package:fbt/app/charges/selected_feature_list.dart';
import 'package:fbt/app/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrentCharge extends StatelessWidget {
  const CurrentCharge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(8.0),
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 5.0,
      children: features
          .map(
            (feature) => Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectedFeatureList(
                        key: new GlobalKey(),
                        title: feature.name,
                        listView: feature.list,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Icon(feature.icon),
                    Spacer(),
                    Text(feature.name),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
