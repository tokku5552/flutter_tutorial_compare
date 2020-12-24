/*
 * Copyright (c) 2020 tokku5552
 *
 * This software is released under the MIT License.
 * https://opensource.org/licenses/mit-license.php
 *
 */
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

  void changeNotifier(ValueNotifier<double> notifier) {
    this.notifier = notifier;
  }
}
