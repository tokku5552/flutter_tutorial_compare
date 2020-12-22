import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter_tutorial_compare/flutter_sliding_tutorial/flutter_sliding_tutorial_model.dart';
import 'package:flutter_tutorial_compare/flutter_sliding_tutorial/page/tutorial_1_page.dart';
import 'package:flutter_tutorial_compare/flutter_sliding_tutorial/page/tutorial_2_page.dart';
import 'package:provider/provider.dart';

class FlutterSlidingTutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FlutterSlidingTutorialModel>(
      create: (_) => FlutterSlidingTutorialModel()..init(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('FlutterSlidingTutorial'),
        ),
        body: Consumer<FlutterSlidingTutorialModel>(
            builder: (context, model, child) {
          final PageController _pageController = PageController();
          return Center(
            child: Stack(children: [
              _slidingTutorial(_pageController, model),
              Align(
                alignment: Alignment(0, 0.85),
                child: Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment(0, 0.94),
                child: SlidingIndicator(
                  indicatorCount: model.pageCount,
                  notifier: model.notifier,
                  activeIndicator: Icon(
                    Icons.check_circle,
                    size: 10,
                    color: Color(0xFF29B6F6),
                  ),
                  inActiveIndicator: Container(
                    color: Colors.yellow,
                  ),
                  margin: 8,
                  sizeIndicator: 10,
                ),
              ),
            ]),
          );
        }),
      ),
    );
  }

  Widget _slidingTutorial(
      PageController _pageController, FlutterSlidingTutorialModel model) {
    return AnimatedBackgroundColor(
      colors: model.colors,
      pageController: _pageController,
      pageCount: model.pageCount,
      child: Container(
        child: PageView(
          controller: _pageController,
          children: List<Widget>.generate(
            model.pageCount,
            (index) => _getPageByIndex(index, model),
          ),
        ),
      ),
    );
  }

  Widget _getPageByIndex(int index, FlutterSlidingTutorialModel model) {
    switch (index % 2) {
      case 0:
        return Tutorial1Page(index, model.notifier);
      case 1:
        return Tutorial2Page(index, model.notifier);
      default:
        throw ArgumentError("Unknown position :$index");
    }
  }
}
