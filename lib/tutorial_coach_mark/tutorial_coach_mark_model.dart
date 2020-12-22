import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/animated_focus_light.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class TutorialCoachMarkModel extends ChangeNotifier {
  final List<TargetFocus> targets = List();
  final GlobalKey keyButton = GlobalKey();
  final GlobalKey keyButton1 = GlobalKey();
  final GlobalKey keyButton2 = GlobalKey();

  void init() {
    targets.add(
      TargetFocus(
        identify: "Target 0",
        keyTarget: keyButton,
        contents: [
          ContentTarget(
              align: AlignContent.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "フォーカスを当ててみる",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "もう一度focusを押すとfocus1にフォーカスが移ります",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
    targets.add(
      TargetFocus(
        identify: "Target 1",
        keyTarget: keyButton1,
        color: Colors.purple,
        contents: [
          ContentTarget(
            align: AlignContent.bottom,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "色も変えれる",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "shapeでShapeLightFocus.RRectを指定すると四角くなります。",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        // package:tutorial_coach_mark/animated_focus_light.dart のインポートが必要
        shape: ShapeLightFocus.RRect,
        radius: 5,
      ),
    );
    targets.add(TargetFocus(
      identify: "Target 2",
      keyTarget: keyButton2,
      contents: [
        ContentTarget(
            align: AlignContent.left,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "折り返し",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "いい感じに折り返して書くこともできます。いい感じに折り返して書くこともできます。いい感じに折り返して書くこともできます。",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )),
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "複数行のコメントも書けます",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "少し上の方に文章を書いていくこともできます。複数行の文章を書くこともできます。",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.RRect,
    ));
  }

  void showTutorial(BuildContext context) {
    TutorialCoachMark(context,
        targets: targets,
        colorShadow: Colors.red,
        textSkip: "SKIP",
        paddingFocus: 10,
        opacityShadow: 0.8, onFinish: () {
      print("finish");
    }, onClickTarget: (target) {
      print(target);
    }, onClickSkip: () {
      print("skip");
    })
      ..show();
  }
}
