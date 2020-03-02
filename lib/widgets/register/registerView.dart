import 'package:GoogleSolChal/widgets/fieldinput.dart';
import 'package:GoogleSolChal/widgets/loginregisterbutton.dart';
import 'package:GoogleSolChal/widgets/passwordstrength/passwordStrengthIndicator.dart';
import 'package:GoogleSolChal/widgets/profilelogo.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView>{
  String _password;

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical:10),
          child: Image.asset("assets/images/register/Logo.png")
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35,vertical:10),
          child: Center(
            child:Text(
              "Nature is a miracle that we depend on",
              style: TextStyle(
                fontSize:15
              )
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:35,vertical:10),
          child: FieldInput(
            hintText: "Username",
            padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
            ontextchanged: (){

            },
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:35,vertical:10),
          child: FieldInput(
            hintText: "Email",
            padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
            ontextchanged: (){
              
            },
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:35,vertical:10),
          child: FieldInput(
            hintText: "Password",
            padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
            ontextchanged: (String text){
              setState((){
                _password = text;
              });
            },
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:35,vertical:10),
          child: FieldInput(
            hintText: "Confirm Password",
            padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
            ontextchanged: (){
              
            },
          )
        ),
        Padding(
          padding: EdgeInsets.only(top:50,bottom:5,left:40,right:40),
          child:Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child:FlutterPasswordStrength(
              password: _password,
              strengthCallback: (strength){

              },
            )
          )
        ),
        Padding(
          padding: EdgeInsets.only(left:10,right:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Weak"),
              Text("Average"),
              Text("Strong")
            ],
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:35,vertical: 20),
          child:LoginRegisterButton(
            buttonColor:Color.fromRGBO(37, 122, 16, 1),
            onPressed: (){
              Navigator.pushNamed(context, '/map');
            },
            buttonText: "Sign Up",
            padding: EdgeInsets.symmetric(horizontal:20,vertical: 15),
          )
        ),        
        Padding(padding: EdgeInsets.symmetric(vertical:30))
      ],
    );
  }
}