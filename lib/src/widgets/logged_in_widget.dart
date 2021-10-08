import 'package:calendar_app/src/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(

         actions: [
           IconButton(onPressed: (){
             final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
             provider.logout();
           }, icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("profile"),
          CircleAvatar(
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          Text("Name : " + user.displayName!)
        ]),
      ),
    );
  }
}
