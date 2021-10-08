import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:calendar_app/src/layouts/LayoutMain.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

class _MyAppState extends State<MyApp> {
  bool loggedin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MaterialApp(
          title: 'Calendario',
          navigatorKey: navigatorKey,
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (BuildContext context) => LayoutMain(),
          },
        );
        // );
      },
    );
  }
}
