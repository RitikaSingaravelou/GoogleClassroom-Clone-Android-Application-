import 'package:classroom/screens/authenticate/sign_up.dart';
import 'package:classroom/screens/views/home.dart';
import 'package:classroom/services/auth.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  final _auth = AuthService();
  static const routeName = '/logout';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          RaisedButton(
            child: Text('Click to logout'),
            onPressed: () async {
              await _auth.signOut();
              Navigator.popAndPushNamed(context,'/signin');
            },
          ),

        ],
      ),
    );
  }
}
