import 'package:GoogleSolChal/widgets/login/loginView.dart';
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
      body: Expanded(
        child:LoginView()
      )
    );
  }
}