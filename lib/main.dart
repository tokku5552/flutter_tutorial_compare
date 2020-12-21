import 'package:flutter/material.dart';
import 'package:flutter_tutorial_compare/tutorial_coach_mark_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial Compare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial Compare'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter Tutorial Compare'),
            RaisedButton(
              child: Text('tutorial_coach_mark'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TutorialCoachMarkPage(),
                    fullscreenDialog: true,
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('flutter_sliding_tutorial'),
              onPressed: () {
                // todo
              },
            ),
            RaisedButton(
              child: Text('flutter_overboard'),
              onPressed: () {
                // todo
              },
            ),
          ],
        ),
      ),
    );
  }
}
