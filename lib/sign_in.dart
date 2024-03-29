import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:new_ui/sign_up.dart';

class MySignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.teal,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Get Started',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          SizedBox(
            height: 16.0,
          ),
          GoogleSignInButton(   //TODO implementation to the Firebase Auth
            onPressed: () {
            showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("You're signed in"),
          content: new Text("Welcome Back!"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Home())
            );
              },
            ),
          ],
        );
      },
    );},
          ),
          SizedBox(
            height: 12.0,
          ),
          GestureDetector(
            child: Text('Sign Up',
                style: TextStyle(fontSize: 15, color: Colors.white)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MySignUp()));
            },
          )
        ],
      ),
    ));
  }
}
