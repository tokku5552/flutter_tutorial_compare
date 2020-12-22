import 'package:flutter/material.dart';

class FlutterSlidingTutorialModel extends ChangeNotifier {
  int pageCount;
  ValueNotifier<double> notifier;

  void init() {
    this.notifier = ValueNotifier(0);
    this.pageCount = 2;
  }
}
