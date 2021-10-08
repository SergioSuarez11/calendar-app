import 'package:calendar_app/src/provider/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: formulario(),
    );
  }

  Widget formulario() {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurpleAccent],
                stops: [0.2, 0.5],
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Signin(),
              SizedBox(
                height: 20,
              ),
              ButtonGoogle()
            ],
          ),
        ));
  }

  Widget Signin() {
    return Text(
      "Sign In",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
    );
  }

  Widget User() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'User',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)))),
    );
  }

  Widget Password() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.0,
              ),
            ),
            prefixIcon: Icon(
              Icons.password,
              color: Colors.white,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        obscureText: true,
      ),
    );
  }

  Widget ButtonLogin() {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      minWidth: 250.0,
      height: 60.0,
      color: Colors.white,
      child: Text(
        'Log in',
        style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget ButtonRegister() {
    return MaterialButton(
      onPressed: () {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.googleLogin();
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          side: BorderSide(color: Colors.white)),
      color: Colors.deepPurpleAccent[200],
      child: Text(
        "Iniciar Sesion",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      minWidth: 200.0,
      height: 60.0,
    );
  }

  Widget ButtonGoogle() {
    return Container(
      child: Column(
        children: [
          SignInButton(
            Buttons.Google,
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider
                  .googleLogin()
                  .then((value) => Navigator.pushReplacementNamed(context, 'home_page'));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(75))),
          )
        ],
      ),
    );
  }
}
