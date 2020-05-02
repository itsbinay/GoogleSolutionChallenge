import 'package:GoogleSolChal/screens/dashboard.dart';
import 'package:GoogleSolChal/screens/homepage.dart';
import 'package:GoogleSolChal/screens/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(GoogleSolutionChallenge());

class GoogleSolutionChallenge extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoogleSolutionChallenge',
      color:Colors.white,
      initialRoute: '/',
      //home: HomePage(),
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => Login(),
        '/dashboard': (context) => Dashboard()
      },
    );
  }
}
