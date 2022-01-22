import 'package:classroom/constants/constants.dart';
import 'package:classroom/screens/authenticate/logout.dart';
import 'package:classroom/screens/views/create_class.dart';
import 'package:classroom/screens/views/created_classes.dart';
import 'package:classroom/screens/views/enrolled_classes.dart';
import 'package:classroom/screens/views/join_class.dart';
import 'package:classroom/services/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../services/auth.dart';

class role extends StatefulWidget {
  static const routeName = '/role';

  @override
  _roleState createState() => _roleState();
}

class _roleState extends State<role> {
  final _auth = AuthService();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    var imgURL;
    if (user == null) {
      imgURL =
      'https://cdn3.iconfinder.com/data/icons/user-interface-web-1/550/web-circle-circular-round_54-512.png';
    } else {
      imgURL = user.photoURL != null
          ? user.photoURL
          : 'https://cdn3.iconfinder.com/data/icons/user-interface-web-1/550/web-circle-circular-round_54-512.png';
    }
    ;
    var height =
        MediaQuery
            .of(context)
            .size
            .height - AppBar().preferredSize.height;
    //final name = user != null ? user.displayName : 'Name';
    return Scaffold(
      appBar: AppBar(
        title: Text('GClassroom Clone'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 28, vertical: 20.0),
                child: Text(
                  'Classroom Application Flipr Hackathon X',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.questrial(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(61, 25, 20, 1.0),
                    wordSpacing: 2.5,
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 28, vertical: 20.0),
                child: Text(
                  'Either be a student or a teacher',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.questrial(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(229, 195, 27, 1.0),
                    wordSpacing: 2.5,
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Student'),
                onPressed: () {
                  Navigator.pushNamed(context, '/homestu');
                },
              ),
              RaisedButton(
                child: Text('Teacher'),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          )),
    );
  }

  /*class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Click Me Page"),
  backgroundColor: Colors.green,
  ),
  body: Center(
  child: RaisedButton(
  onPressed: () {
  Navigator.pop(context);
  },
  child: Text('Back!'),
  ),
  ),
  );
  }
  }

  class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Tap Me Page"),
  backgroundColor: Colors.green,
  ),
  );
  }
  }*/
}