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
          GoogleSignInButton(
            onPressed: () {},
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
