import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class TutorialCoachMarkPage extends StatelessWidget {
  final List<TargetFocus> targets = List();
  final GlobalKey keyButton = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TutorialCoachMarkPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('TutorialCoachMarkPage'),
            RaisedButton(
              child: Text('focus'),
              onPressed: () {
                // todo
              },
            ),
            RaisedButton(
              child: Text('flutter_sliding_tutorial'),
              onPressed: () {
                // todo
              },
            ),
            RaisedButton(
              child: Text('flutter_overboard'),
              onPressed: () {
                // todo
              },
            ),
          ],
        ),
      ),
    );
  }
}
