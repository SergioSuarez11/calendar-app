import 'dart:math';
import 'package:flutter/material.dart';
import 'package:calendar_app/src/widgets/calendar.dart';

class LayoutMain extends StatefulWidget {
  LayoutMain({Key? key}) : super(key: key);

  @override
  _LayoutMainState createState() => _LayoutMainState();
}

class _LayoutMainState extends State<LayoutMain> {
  int _page = 0;
  double counter = 0.0;
  GlobalKey<ScaffoldState> mScaffoldState = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  Widget _callPage(int actuallyPage) {
    switch (actuallyPage) {
      case 0:
        return MyHomePage();
      case 1:
        return Container(
          child: Text("data"),
        );
      default:
        return MyHomePage();
    }
  }

  setStatePage(int index) => setState(() => _page = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        // child:
        // SingleChildScrollView(
        child: _callPage(_page),
        // ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter * counter;
              });
            },
            child: Text("*X2"),
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
