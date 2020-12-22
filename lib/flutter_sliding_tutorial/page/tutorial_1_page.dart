/*
 * Copyright (c) 2020 tokku5552
 *
 * This software is released under the MIT License.
 * https://opensource.org/licenses/mit-license.php
 *
 */
import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

class Tutorial1Page extends StatelessWidget {
  final int page;
  final ValueNotifier<double> notifier;

  Tutorial1Page(this.page, this.notifier);

  @override
  Widget build(BuildContext context) {
    return SlidingPage(
      notifier: notifier,
      page: page,
      child: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Center(
              child: FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.4,
                child: SlidingContainer(
                    child: Icon(
                      Icons.account_circle,
                      size: 200.0,
                    ),
                    offset: 300),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.78),
              child: SlidingContainer(
                offset: 250,
                child: Text(
                  "スワイプすると",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
