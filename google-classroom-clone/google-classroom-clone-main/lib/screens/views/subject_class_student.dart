import 'package:classroom/screens/views/class_announcements.dart';
import 'package:classroom/screens/views/submit_view_classwork.dart';
import 'package:classroom/screens/views/upcoming_classes_student.dart';
import 'package:flutter/material.dart';

class SubjectClassStudent extends StatefulWidget {
  static const routeName = '/subject-class-student';

  @override
  _SubjectClassStudentState createState() => _SubjectClassStudentState();
}

class _SubjectClassStudentState extends State<SubjectClassStudent> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> classData = ModalRoute.of(context).settings.arguments;
    final tabs = [
      Announcements(classData),
      SubmitClasswork(classData),
      UpcomingClassesStudent(classData),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          classData['Name'].toString(),
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        backgroundColor: Colors.white,
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stream,
              ),
              label: 'announcement'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.class__rounded,
              ),
              label: 'classwork'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.meeting_room,
              ),
              label: 'upcoming lectures'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
