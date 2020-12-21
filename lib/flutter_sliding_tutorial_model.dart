import 'package:flutter/material.dart';

class FlutterSlidingTutorialModel extends ChangeNotifier {
  int pageCount;
  ValueNotifier<double> notifier;

  void init() {
    this.pageCount = 6;
  }
}
