import 'package:flutter/material.dart';
import 'package:flutter_tutorial_compare/tutorial_coach_mark/tutorial_coach_mark_model.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class TutorialCoachMarkPage extends StatelessWidget {
  final List<TargetFocus> targets = List();
  final GlobalKey keyButton = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TutorialCoachMarkModel>(
      create: (_) => TutorialCoachMarkModel()..init(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('TutorialCoachMarkPage'),
        ),
        body:
            Consumer<TutorialCoachMarkModel>(builder: (context, model, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('TutorialCoachMarkPage'),
                RaisedButton(
                  key: model.keyButton,
                  child: Text('focus'),
                  onPressed: () {
                    model.showTutorial(context);
                  },
                ),
                RaisedButton(
                  key: model.keyButton1,
                  child: Text('focus1'),
                  onPressed: () {
                    // todo
                  },
                ),
                RaisedButton(
                  key: model.keyButton2,
                  child: Text('focus2'),
                  onPressed: () {
                    // todo
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
