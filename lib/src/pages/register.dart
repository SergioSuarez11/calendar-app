 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterPage extends StatefulWidget {
  @override
  createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: formulario());
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
              SignUp(),
              SizedBox(
                height: 20,
              ),
              name(),
              Lastname(),
              age(),
              User(),
              Email(),
              Password(),
              SizedBox(
                height: 20,
              ),
              ButtonLogin(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }

  Widget SignUp() {
    return Text(
      "Sign Up",
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

  Widget name() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'Name',
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

  Widget Lastname() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'Last Name',
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

  Widget age() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'Age',
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

  Widget Email() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              labelText: 'Email',
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
                Icons.email,
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
}
