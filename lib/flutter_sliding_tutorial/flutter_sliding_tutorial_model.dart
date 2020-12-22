import 'package:flutter/material.dart';

class FlutterSlidingTutorialModel extends ChangeNotifier {
  int pageCount;
  ValueNotifier<double> notifier;

  final List<Color> colors = [
    Color(0xFF669900), // 16進数表示
    Colors.blueAccent, // Colorsから選んでもOK
  ];
  void init() {
    this.notifier = ValueNotifier(0);
    this.pageCount = 2;
  }
}
