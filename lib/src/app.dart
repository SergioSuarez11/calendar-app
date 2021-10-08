import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calendar_app/src/pages/home_page.dart';
import 'package:calendar_app/src/pages/register.dart';
import 'package:calendar_app/src/provider/google_sign_in.dart';
import 'package:calendar_app/src/pages/login.dart';
import 'package:calendar_app/src/pages/Home.dart';

class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'calendar',
          routes: {
            '/': (context) => LoginPage(),
            'register': (context) => RegisterPage(),
            'home_page':(context)=> HomePage(),
            'calendar' : ( _ ) => Home()
          },

          //LoginPage(),
        ),
      );
}
