import 'package:calendar_app/src/provider/google_sign_in.dart';
import 'package:calendar_app/src/widgets/logged_in_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    

  Widget build(BuildContext context) => Scaffold(

 
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState==ConnectionState.waiting)
          {return Center(child: CircularProgressIndicator());}
          else if(snapshot.hasData){
            return Container(child: LoggedInWidget(),);
          }
          else if(snapshot.hasError){
            return Center(child: Text("Algo salio mal bro"),);
          }
          else{
          return Text("sesion inicida");
          }
        },
      ),
    );
  
}
