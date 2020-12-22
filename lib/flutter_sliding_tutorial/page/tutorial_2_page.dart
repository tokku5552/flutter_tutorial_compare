import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

class Tutorial2Page extends StatelessWidget {
  final int page;
  final ValueNotifier<double> notifier;

  Tutorial2Page(this.page, this.notifier);

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
                      Icons.create,
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
                  "ページを変えれる",
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
