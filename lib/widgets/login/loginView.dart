import 'package:GoogleSolChal/widgets/loginregisterbutton.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>{

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        LoginRegisterButton(
          buttonColor:Color.fromRGBO(37, 122, 16, 1),
          onPressed: (){},
          buttonText: "Register",
          padding: EdgeInsets.symmetric(horizontal:20),
        )
      ],
    );
  }
}