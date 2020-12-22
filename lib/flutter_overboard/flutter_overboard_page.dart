/*
 * Copyright (c) 2020 tokku5552
 *
 * This software is released under the MIT License.
 * https://opensource.org/licenses/mit-license.php
 *
 */
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:flutter_tutorial_compare/tutorial_coach_mark/tutorial_coach_mark_model.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class FlutterOverboardPage extends StatelessWidget {
  final List<TargetFocus> targets = List();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TutorialCoachMarkModel>(
      create: (_) => TutorialCoachMarkModel()..init(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('FlutterOverboardPage'),
        ),
        body:
            Consumer<TutorialCoachMarkModel>(builder: (context, model, child) {
          return OverBoard(
            pages: pages,
            showBullets: true,
            skipCallback: () {
              // when user select SKIP
              Navigator.pop(context);
            },
            finishCallback: () {
              // when user select NEXT
              Navigator.pop(context);
            },
          );
        }),
      ),
    );
  }

  final pages = [
    PageModel(
        color: const Color(0xFF95cedd),
        imageAssetPath: 'assets/0.png',
        title: '文字を表示できます',
        body: '細かい説明をbodyに指定して書くことが出来ます',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/1.png',
        title: '左右のスワイプ',
        body: 'NEXTを押さなくても左右にスワイプすることで画面の切替が出来ます',
        doAnimateImage: true),
    PageModel.withChild(
        child: Padding(
            padding: EdgeInsets.only(bottom: 25.0),
            child: Text(
              "さあ、始めましょう",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            )),
        color: const Color(0xFF5886d6),
        doAnimateChild: true)
  ];
}
