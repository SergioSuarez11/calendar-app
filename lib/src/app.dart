import 'package:calendar_app/src/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:calendar_app/src/pages/login.dart';

class CalendarApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>LoginPage(),
        'register':(context)=>RegisterPage()
      },
      
      
      
      //LoginPage(),
    );
  }
}