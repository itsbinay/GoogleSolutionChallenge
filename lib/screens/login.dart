import 'package:GoogleSolChal/widgets/login/newloginview.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.all(0),
        color: Colors.grey[100],
        child: Center(
          child: NewLoginView()
          //LoginView()
        )
      )
    );
  }
}