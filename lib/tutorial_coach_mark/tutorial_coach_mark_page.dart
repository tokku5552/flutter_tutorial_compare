/*
 * Copyright (c) 2020 tokku5552
 *
 * This software is released under the MIT License.
 * https://opensource.org/licenses/mit-license.php
 *
 */
import 'package:flutter/material.dart';
import 'package:flutter_tutorial_compare/tutorial_coach_mark/tutorial_coach_mark_model.dart';
import 'package:provider/provider.dart';

class TutorialCoachMarkPage extends StatelessWidget {
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
                    print("onTap focus1");
                  },
                ),
                RaisedButton(
                  key: model.keyButton1,
                  child: Text('focus1'),
                  onPressed: () {
                    print("onTap focus1");
                  },
                ),
                RaisedButton(
                  key: model.keyButton2,
                  child: Text('focus2'),
                  onPressed: () {
                    print("onTap focus2");
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
